<?php

use WHMCS\Carbon;
use WHMCS\Database\Capsule;

if (!defined("WHMCS")) {
    die("This file cannot be accessed directly");
}

$reportdata["title"] = "Sales by Product for " . $months[(int) $month] . " " . $year;
$reportdata["description"] = "This report gives a breakdown of the number of units sold of each product per month";

$reportdata["currencyselections"] = true;

$total = 0;
$prevgroup = '';

$datefilter = Carbon::create(
    $year,
    $month,
    1
);

$reportdata["tableheadings"] = array("Product Name","Units Sold","Value");

$result = select_query("tblproducts","tblproducts.id,tblproducts.name,tblproductgroups.name AS groupname","","tblproductgroups`.`order` ASC,`tblproducts`.`order` ASC,`name","ASC","","tblproductgroups ON tblproducts.gid=tblproductgroups.id");
while($data = mysql_fetch_array($result)) {
    $pid = $data["id"];
    $group = $data["groupname"];
    $prodname = $data["name"];

    if ($group != $prevgroup) {
        $reportdata["tablevalues"][] = array("**<b>$group</b>");
    }

    $data = Capsule::table('tblhosting')
        ->select(
            [
                Capsule::raw('COUNT(tblhosting.id) as total'),
                Capsule::raw('SUM(tblhosting.firstpaymentamount) as amount')
            ]
        )
        ->where('tblhosting.packageid', $pid)
        ->where('tblhosting.domainstatus', 'Active')
        ->whereBetween(
            'tblhosting.regdate',
            [
                $datefilter->startOfMonth()->toDateTimeString(),
                $datefilter->endOfMonth()->toDateTimeString()
            ]
        )
        ->where('tblclients.currency', $currencyid)
        ->join('tblclients', 'tblclients.id', '=', 'tblhosting.userid')
        ->first();
    $number = $data->total;
    $amount = $data->amount;

    $total += $amount;

    $amount = formatCurrency($amount);

    $reportdata["tablevalues"][] = array($prodname,$number,$amount);

    $prevgroup = $group;

}

$reportdata["tablevalues"][] = array("**<b>Addons</b>");

$result = select_query("tbladdons","","","name","ASC");
while($data = mysql_fetch_array($result)) {

    $pid = $data["id"];
    $prodname = $data["name"];

    $data = Capsule::table('tblhostingaddons')
        ->select(
            [
                Capsule::raw('COUNT(tblhostingaddons.id) as total'),
                Capsule::raw('SUM(tblhostingaddons.setupfee + tblhostingaddons.recurring) as amount')
            ]
        )
        ->where('tblhostingaddons.addonid', $pid)
        ->where('tblhostingaddons.status', 'Active')
        ->whereBetween(
            'tblhostingaddons.regdate',
            [
                $datefilter->startOfMonth()->toDateTimeString(),
                $datefilter->endOfMonth()->toDateTimeString()
            ]
        )
        ->where('tblclients.currency', $currencyid)
        ->join('tblhosting', 'tblhosting.id', '=', 'tblhostingaddons.hostingid')
        ->join('tblclients', 'tblclients.id', '=', 'tblhosting.userid')
        ->first();
    $number = $data->total;
    $amount = $data->amount;

    $total += $amount;

    $amount = formatCurrency($amount);

    $reportdata["tablevalues"][] = array($prodname,$number,$amount);

    $prevgroup = $group;

}

$total = formatCurrency($total);

$reportdata["footertext"] = '<p align="center"><strong>Total: '.$total.'</strong></p>';

$reportdata["monthspagination"] = true;
