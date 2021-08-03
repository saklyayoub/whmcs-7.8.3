<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:52:05
  from '/var/www/html/admin/templates/blend/sidebar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911c5d66760_64125370',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '429d5703f14b4b73b935272b85ca021c11da6a43' => 
    array (
      0 => '/var/www/html/admin/templates/blend/sidebar.tpl',
      1 => 1569404630,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911c5d66760_64125370 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['sidebar']->value == "home") {?>

<span class="header"><img src="images/icons/linktracking.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['shortcuts'];?>
</span>
<ul class="menu">
    <li><a href="clientsadd.php"><img src="images/icons/clientsadd.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['addnew'];?>
</a></li>
    <li><a href="ordersadd.php"><img src="images/icons/ordersadd.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['addnew'];?>
</a></li>
    <li><a href="quotes.php?action=manage"><img src="images/icons/quotes.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['quotes']['createnew'];?>
</a></li>
    <li><a href="todolist.php"><img src="images/icons/todolist.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['todolistcreatenew'];?>
</a></li>
    <li><a href="supporttickets.php?action=open"><img src="images/icons/tickets.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['opennewticket'];?>
</a></li>
    <li><a href="whois.php"><img src="images/icons/domains.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['whois'];?>
</a></li>
    <li><a href="#" data-toggle="modal" data-target="#modalGenerateInvoices"><img src="images/icons/invoices.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['invoices']['geninvoices'];?>
</a></li>
    <li><a href="#" data-toggle="modal" data-target="#modalCreditCardCapture"><img src="images/icons/offlinecc.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['invoices']['attemptcccaptures'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/home.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['systeminfo'];?>
</span>
<div class="smallfont"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['license']['regto'];?>
: <?php echo $_smarty_tpl->tpl_vars['licenseinfo']->value['registeredname'];?>
<br /><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['license']['type'];?>
: <?php echo $_smarty_tpl->tpl_vars['licenseinfo']->value['productname'];?>
<br /><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['license']['expires'];?>
: <?php echo $_smarty_tpl->tpl_vars['licenseinfo']->value['expires'];?>
<br /><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['version'];?>
: <?php echo $_smarty_tpl->tpl_vars['licenseinfo']->value['currentversion'];
if ($_smarty_tpl->tpl_vars['licenseinfo']->value['updateavailable']) {?><br /><span class="textred"><b><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['license']['updateavailable'];?>
</b></span><?php }?><br /><br /></div>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "clients") {?>

<span class="header"><img src="images/icons/clients.png" class="absmiddle" alt="Clients" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['title'];?>
</span>
<ul class="menu">
    <li><a href="clients.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['viewsearch'];?>
</a></li>
    <li><a href="clientsadd.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['addnew'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/products.png" alt="Products/Services" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['title'];?>
</span>
<ul class="menu">
    <li><a href="<?php echo routePath('admin-services-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listall'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-services-shared');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listhosting'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-services-reseller');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listreseller'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-services-server');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listservers'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-services-other');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listother'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-addons-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listaddons'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-domains-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listdomains'];?>
</a></li>
    <li><a href="cancelrequests.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['cancelrequests'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/affiliates.png" alt="Affiliates" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['affiliates']['title'];?>
</span>
<ul class="menu">
    <li><a href="affiliates.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['affiliates']['manage'];?>
</a></li>
</ul>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "orders") {?>

<span class="header"><img src="images/icons/orders.png" alt="Affiliates" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['title'];?>
</span>
<ul class="menu">
    <li><a href="orders.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listall'];?>
</a></li>
    <li><a href="orders.php?status=Pending">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listpending'];?>
</a></li>
    <li><a href="orders.php?status=Active">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listactive'];?>
</a></li>
    <li><a href="orders.php?status=Fraud">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listfraud'];?>
</a></li>
    <li><a href="orders.php?status=Cancelled">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listcancelled'];?>
</a></li>
    <li><a href="ordersadd.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['addnew'];?>
</a></li>
</ul>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "billing") {?>

<span class="header"><img src="images/icons/transactions.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['title'];?>
</span>
<ul class="menu">
    <li><a href="transactions.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['transactionslist'];?>
</a></li>
    <li><a href="gatewaylog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['gatewaylog'];?>
</a></li>
    <li><a href="offlineccprocessing.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['offlinecc'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/invoices.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['invoices']['title'];?>
</span>
<ul class="menu">
    <li><a href="invoices.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['invoices']['listall'];?>
</a></li>
    <li><a href="invoices.php?status=Paid">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['paid'];?>
</a></li>
    <li><a href="invoices.php?status=Draft">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['draft'];?>
</a></li>
    <li><a href="invoices.php?status=Unpaid">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['unpaid'];?>
</a></li>
    <li><a href="invoices.php?status=Overdue">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['overdue'];?>
</a></li>
    <li><a href="invoices.php?status=Cancelled">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['cancelled'];?>
</a></li>
    <li><a href="invoices.php?status=Refunded">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['refunded'];?>
</a></li>
    <li><a href="invoices.php?status=Collections">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['collections'];?>
</a></li>
    <li><a href="invoices.php?status=Payment%20Pending">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['paymentpending'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/billableitems.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['title'];?>
</span>
<ul class="menu">
    <li><a href="billableitems.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['listall'];?>
</a></li>
    <li><a href="billableitems.php?status=Uninvoiced">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['uninvoiced'];?>
</a></li>
    <li><a href="billableitems.php?status=Recurring">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['recurring'];?>
</a></li>
    <li><a href="billableitems.php?action=manage"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['addnew'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/quotes.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['quotes']['title'];?>
</span>
<ul class="menu">
    <li><a href="quotes.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['quotes']['listall'];?>
</a></li>
    <li><a href="quotes.php?validity=Valid">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['valid'];?>
</a></li>
    <li><a href="quotes.php?validity=Expired">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['expired'];?>
</a></li>
    <li><a href="quotes.php?action=manage"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['quotes']['createnew'];?>
</a></li>
</ul>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "support") {?>

<?php if ($_smarty_tpl->tpl_vars['inticket']->value) {?>

<span class="header"><img src="images/icons/support.png" alt="Support Center" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['ticketinfo'];?>
</span>

<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['fields']['client'];?>
</span>
<div class="ticketinfo smallfont">
    <?php if ($_smarty_tpl->tpl_vars['userid']->value) {?>
        <a href="clientssummary.php?userid=<?php echo $_smarty_tpl->tpl_vars['userid']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['clientgroupcolour']->value) {?> style="background-color:<?php echo $_smarty_tpl->tpl_vars['clientgroupcolour']->value;?>
"<?php }?> target="_blank">
            <?php echo $_smarty_tpl->tpl_vars['clientname']->value;?>

        </a>
        <?php if ($_smarty_tpl->tpl_vars['contactid']->value) {?>
            (<a href="clientscontacts.php?userid=<?php echo $_smarty_tpl->tpl_vars['userid']->value;?>
&contactid=<?php echo $_smarty_tpl->tpl_vars['contactid']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['clientgroupcolour']->value) {?> style="background-color:<?php echo $_smarty_tpl->tpl_vars['clientgroupcolour']->value;?>
"<?php }?> target="_blank"><?php echo $_smarty_tpl->tpl_vars['contactname']->value;?>
</a>)
        <?php }?>
    <?php } else { ?>
        <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?email=<?php echo urlencode($_smarty_tpl->tpl_vars['email']->value);?>
"><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</a><br />
        <?php echo $_smarty_tpl->tpl_vars['email']->value;?>

    <?php }?>
</div>

<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['department'];?>
</span>
<div class="ticketinfo">
<input type="hidden" id="currentdeptid" value="<?php echo $_smarty_tpl->tpl_vars['deptid']->value;?>
" />
<select id="deptid" data-update-type="deptid" class="form-control input-sm sidebar-ticket-ajax">
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['departments']->value, 'department');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['department']->value) {
?>
<option value="<?php echo $_smarty_tpl->tpl_vars['department']->value['id'];?>
"<?php if ($_smarty_tpl->tpl_vars['department']->value['id'] == $_smarty_tpl->tpl_vars['deptid']->value) {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['department']->value['name'];?>
</option>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</select>
</div>

<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['assignedto'];?>
</span>
<div class="ticketinfo">
<input type="hidden" id="currentflagto" value="<?php echo $_smarty_tpl->tpl_vars['flag']->value;?>
" />
<select id="flagto" data-update-type="flagto" class="form-control input-sm select-assignto sidebar-ticket-ajax">
<option value="0"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['none'];?>
</option>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['staff']->value, 'staffmember');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['staffmember']->value) {
?>
<option value="<?php echo $_smarty_tpl->tpl_vars['staffmember']->value['id'];?>
"<?php if ($_smarty_tpl->tpl_vars['staffmember']->value['id'] == $_smarty_tpl->tpl_vars['flag']->value) {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['staffmember']->value['name'];?>
</option>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</select> <a href="#" onclick="$('#flagto').val(<?php echo $_smarty_tpl->tpl_vars['adminid']->value;?>
);$('#flagto').trigger('change');return false"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['me'];?>
</a>
</div>

<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['priority'];?>
</span>
<div class="ticketinfo">
<input type="hidden" id="currentpriority" value="<?php echo $_smarty_tpl->tpl_vars['priority']->value;?>
" />
<select id="priority" data-update-type="priority" class="form-control input-sm sidebar-ticket-ajax">
<option value="High"<?php if ($_smarty_tpl->tpl_vars['priority']->value == "High") {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['high'];?>
</option>
<option value="Medium"<?php if ($_smarty_tpl->tpl_vars['priority']->value == "Medium") {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['medium'];?>
</option>
<option value="Low"<?php if ($_smarty_tpl->tpl_vars['priority']->value == "Low") {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['low'];?>
</option>
</select>
</div>

<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['staffparticipants'];?>
</span>
<div class="ticketinfo smallfont">
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['staffinvolved']->value, 'staffname');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['staffname']->value) {
echo $_smarty_tpl->tpl_vars['staffname']->value;?>
<br />
<?php
}
} else {
?>
No Replies Yet
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>

<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['tags'];?>
</span>
<div class="ticketinfo">
    <input id="ticketTags" value="<?php echo implode($_smarty_tpl->tpl_vars['tags']->value,',');?>
" class="selectize-tags" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>'support.addTag'),$_smarty_tpl ) );?>
" />
</div>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['sidebaroutput']->value, 'output');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['output']->value) {
?>
    <div>
        <?php echo $_smarty_tpl->tpl_vars['output']->value;?>

    </div>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

<div class="watch-ticket">
    <?php if ($_smarty_tpl->tpl_vars['watchingTicket']->value) {?>
        <button class="btn btn-danger btn-block btn-sm" id="watch-ticket" type="button" data-admin-full-name="<?php echo $_smarty_tpl->tpl_vars['adminFullName']->value;?>
" data-admin-id="<?php echo $_smarty_tpl->tpl_vars['adminid']->value;?>
" data-ticket-id="<?php echo $_smarty_tpl->tpl_vars['ticketid']->value;?>
" data-type="unwatch">
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"support.unwatchTicket"),$_smarty_tpl ) );?>

        </button>
    <?php } else { ?>
        <button class="btn btn-info btn-block btn-sm" id="watch-ticket" type="button" data-admin-full-name="<?php echo $_smarty_tpl->tpl_vars['adminFullName']->value;?>
" data-admin-id="<?php echo $_smarty_tpl->tpl_vars['adminid']->value;?>
" data-ticket-id="<?php echo $_smarty_tpl->tpl_vars['ticketid']->value;?>
" data-type="watch">
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"support.watchTicket"),$_smarty_tpl ) );?>

        </button>
    <?php }?>
</div>

<span class="header">
    <img src="images/icons/find.png" alt="<?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['ticketWatchers'];?>
" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['ticketWatchers'];?>

</span>
<ul class="menu smallfont" id="ticketWatchers">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ticketWatchers']->value, 'ticketWatcher', false, 'k');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['ticketWatcher']->value) {
?>
        <li id="ticket-watcher-<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['ticketWatcher']->value;?>
</li>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    <li id="ticket-watcher-0"<?php if ($_smarty_tpl->tpl_vars['ticketWatchers']->value) {?> class="hidden"<?php }?>><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['none'];?>
</li>
</ul>

<span class="header">
    <img src="images/icons/emailmarketer.png" alt="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"support.ccrecipients"),$_smarty_tpl ) );?>
" width="16" height="16" class="absmiddle" />
    <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"support.ccrecipients"),$_smarty_tpl ) );?>

</span>
<ul class="menu smallfont" id="ticketCcRecipients">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ticketCc']->value, 'cc', false, 'k');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['cc']->value) {
?>
        <li id="ticket-cc-<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['cc']->value;?>
</li>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    <li id="ticket-cc-0"<?php if ($_smarty_tpl->tpl_vars['ticketCc']->value) {?> class="hidden"<?php }?>><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"global.none"),$_smarty_tpl ) );?>
</li>
</ul>

<?php } else { ?>

<span class="header"><img src="images/icons/support.png" alt="Support Center" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['title'];?>
</span>
<ul class="menu">
    <li><a href="supportannouncements.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['announcements'];?>
</a></li>
    <li><a href="supportdownloads.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['downloads'];?>
</a></li>
    <li><a href="supportkb.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['knowledgebase'];?>
</a></li>
    <li><a href="supporttickets.php?action=open"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['opennewticket'];?>
</a></li>
    <li><a href="supportticketpredefinedreplies.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['predefreplies'];?>
</a></li>
</ul>

<?php }?>

<span class="header"><img src="images/icons/tickets.png" alt="Filter Tickets" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['filtertickets'];?>
</span>

<form method="post" action="supporttickets.php">
<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['fields']['status'];?>
</span>
<select name="view" class="form-control input-sm">
    <option value="any">- Any -</option>
    <option value=""<?php if ($_smarty_tpl->tpl_vars['ticketfilterdata']->value['view'] == '') {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['awaitingreply'];?>
 (<?php echo $_smarty_tpl->tpl_vars['ticketsawaitingreply']->value;?>
)</option>
    <option value="flagged"<?php if ($_smarty_tpl->tpl_vars['ticketfilterdata']->value['view'] == "flagged") {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['flagged'];?>
 (<?php echo $_smarty_tpl->tpl_vars['ticketsflagged']->value;?>
)</option>
    <option value="active"<?php if ($_smarty_tpl->tpl_vars['ticketfilterdata']->value['view'] == "active") {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['allactive'];?>
 (<?php echo $_smarty_tpl->tpl_vars['ticketsallactive']->value;?>
)</option>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ticketstatuses']->value, 'status');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['status']->value) {
?>
    <option value="<?php echo $_smarty_tpl->tpl_vars['status']->value['title'];?>
"<?php if ($_smarty_tpl->tpl_vars['status']->value['title'] == $_smarty_tpl->tpl_vars['ticketfilterdata']->value['view']) {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['status']->value['title'];?>
 (<?php echo $_smarty_tpl->tpl_vars['status']->value['count'];?>
)</option>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</select>
<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['department'];?>
</span>
<select name="deptid" class="form-control input-sm">
    <option value="">- Any -</option>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ticketdepts']->value, 'dept');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['dept']->value) {
?>
    <option value="<?php echo $_smarty_tpl->tpl_vars['dept']->value['id'];?>
"<?php if ($_smarty_tpl->tpl_vars['dept']->value['id'] == $_smarty_tpl->tpl_vars['ticketfilterdata']->value['deptid']) {?> selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['dept']->value['name'];?>
</option>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</select>
<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['subjectmessage'];?>
</span>
<input type="text" name="subject" value="<?php echo $_smarty_tpl->tpl_vars['ticketfilterdata']->value['subject'];?>
" class="form-control input-sm" />
<span class="ticketheader"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['fields']['email'];?>
</span>
<input type="text" name="email" value="<?php echo $_smarty_tpl->tpl_vars['ticketfilterdata']->value['email'];?>
" class="form-control input-sm" />
<input type="submit" value="<?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['filter'];?>
  &raquo;" class="btn btn-sm btn-block top-margin-5" />
</form>

<br />

<?php if ($_smarty_tpl->tpl_vars['inticketlist']->value) {?>

<span class="header"><img src="images/icons/tickets.png" alt="Tag Cloud" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['tagcloud'];?>
</span>

<div class="tagcloud"><?php echo $_smarty_tpl->tpl_vars['tagcloud']->value;?>
</div>

<?php }?>

<?php if (!$_smarty_tpl->tpl_vars['inticket']->value) {?>

<span class="header"><img src="images/icons/networkissues.png" alt="Network Issues" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['title'];?>
</span>
<ul class="menu">
    <li><a href="networkissues.php">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['open'];?>
</a></li>
    <li><a href="networkissues.php?view=scheduled">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['scheduled'];?>
</a></li>
    <li><a href="networkissues.php?view=resolved">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['resolved'];?>
</a></li>
    <li><a href="networkissues.php?action=manage"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['addnew'];?>
</a></li>
</ul>

<?php }?>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "reports") {?>

<span class="header"><img src="images/icons/reports.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['reports']['title'];?>
</span>
<ul class="menu">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['text_reports']->value, 'reporttitle', false, 'filename');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['filename']->value => $_smarty_tpl->tpl_vars['reporttitle']->value) {
?>
        <?php if (!in_array($_smarty_tpl->tpl_vars['filename']->value,$_smarty_tpl->tpl_vars['denied_reports']->value)) {?>
            <li><a href="reports.php?report=<?php echo $_smarty_tpl->tpl_vars['filename']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['reporttitle']->value;?>
</a></li>
        <?php }?>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "utilities") {?>

<span class="header"><img src="images/icons/utilities.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['title'];?>
</span>
<ul class="menu">
    <?php if (in_array("View Module Queue",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
        <li><a href="modulequeue.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['moduleQueue'];?>
</a></li>
    <?php }?>
    <li><a href="utilitiesemailmarketer.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['emailmarketer'];?>
</a></li>
    <li><a href="utilitieslinktracking.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['linktracking'];?>
</a></li>
    <li><a href="calendar.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['calendar'];?>
</a></li>
    <li><a href="todolist.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['todolist'];?>
</a></li>
    <li><a href="whois.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['whois'];?>
</a></li>
    <li><a href="utilitiesresolvercheck.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['domainresolver'];?>
</a></li>
    <li><a href="systemintegrationcode.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['integrationcode'];?>
</a></li>
    <li><a href="systemdatabase.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['dbstatus'];?>
</a></li>
    <li><a href="systemcleanup.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['syscleanup'];?>
</a></li>
    <li><a href="systemphpinfo.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['phpinfo'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-utilities-system-phpcompat');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['phpcompat'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/logs.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['logs'];?>
</span>
<ul class="menu">
    <li><a href="systemactivitylog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['activitylog'];?>
</a></li>
    <li><a href="systemadminlog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['adminlog'];?>
</a></li>
    <li><a href="systemmodulelog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['modulelog'];?>
</a></li>
    <li><a href="systememaillog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['emaillog'];?>
</a></li>
    <li><a href="systemmailimportlog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['ticketmaillog'];?>
</a></li>
    <li><a href="systemwhoislog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['whoislog'];?>
</a></li>
</ul>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "addonmodules") {?>

<?php echo $_smarty_tpl->tpl_vars['addon_module_sidebar']->value;?>


<span class="header"><img src="images/icons/addonmodules.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['addonmodules'];?>
</span>
<ul class="menu">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['addon_modules']->value, 'addontitle', false, 'filename');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['filename']->value => $_smarty_tpl->tpl_vars['addontitle']->value) {
?>
    <li><a href="addonmodules.php?module=<?php echo $_smarty_tpl->tpl_vars['filename']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['addontitle']->value;?>
</a></li>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>

<?php } elseif ($_smarty_tpl->tpl_vars['sidebar']->value == "config") {?>

<span class="header"><img src="images/icons/config.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['config'];?>
</span>
<ul class="menu">
    <li><a href="configgeneral.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['general'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-apps-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['appsAndIntegrations'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-setup-authn-view');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['signInIntegrations'];?>
</a></li>
    <li><a href="configauto.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['automation'];?>
</a></li>
    <li><a href="marketconnect.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['marketconnect'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-setup-notifications-overview');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['notifications'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-setup-storage-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['storage'];?>
</a></li>
    <li><a href="configapplinks.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['applicationLinks'];?>
</a></li>
    <li><a href="configopenid.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['openIdConnect'];?>
</a></li>
    <li><a href="configemailtemplates.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['emailtpls'];?>
</a></li>
    <li><a href="configaddonmods.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['addonmodules'];?>
</a></li>
    <li><a href="configclientgroups.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['clientgroups'];?>
</a></li>
    <li><a href="configcustomfields.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['customclientfields'];?>
</a></li>
    <li><a href="configfraud.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['fraud'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/admins.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['staff'];?>
</span>
<ul class="menu">
    <li><a href="configadmins.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['admins'];?>
</a></li>
    <li><a href="configadminroles.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['adminroles'];?>
</a></li>
    <li><a href="configtwofa.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['twofa'];?>
</a></li>
    <li><a href="configapicredentials.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['apicredentials'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/income.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['payments'];?>
</span>
<ul class="menu">
    <li><a href="configcurrencies.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['currencies'];?>
</a></li>
    <li><a href="configgateways.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['gateways'];?>
</a></li>
    <li><a href="<?php echo routePath('admin-setup-payments-tax-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['tax'];?>
</a></li>
    <li><a href="configpromotions.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['promos'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/products.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['products'];?>
</span>
<ul class="menu">
    <li><a href="configproducts.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['products'];?>
</a></li>
    <li><a href="configproductoptions.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['configoptions'];?>
</a></li>
    <li><a href="configaddons.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['addons'];?>
</a></li>
    <li><a href="configbundles.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['bundles'];?>
</a></li>
    <li><a href="configdomains.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['domainpricing'];?>
</a></li>
    <li><a href="configregistrars.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['registrars'];?>
</a></li>
    <li><a href="configservers.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['servers'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/support.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['title'];?>
</span>
<ul class="menu">
    <li><a href="configticketdepartments.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['supportdepartments'];?>
</a></li>
    <li><a href="configticketstatuses.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['ticketstatuses'];?>
</a></li>
    <li><a href="configticketescalations.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['escalationrules'];?>
</a></li>
    <li><a href="configticketspamcontrol.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['spam'];?>
</a></li>
</ul>

<span class="header"><img src="images/icons/configother.png" class="absmiddle" width="16" height="16" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['other'];?>
</span>
<ul class="menu">
    <li><a href="configorderstatuses.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['orderstatuses'];?>
</a></li>
    <li><a href="configsecurityqs.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['securityqs'];?>
</a></li>
    <li><a href="configbannedips.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['bannedips'];?>
</a></li>
    <li><a href="configbannedemails.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['bannedemails'];?>
</a></li>
    <li><a href="configbackups.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['backups'];?>
</a></li>
</ul>

<?php }?>

<span class="header"><img src="images/icons/search.png" alt="" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['advancedsearch'];?>
</span>
<div class="smallfont">

<form method="get" action="search.php">
    <select name="type" id="searchtype" onchange="populate(this)" class="form-control input-sm">
      <option value="clients">Clients </option>
      <option value="orders">Orders </option>
      <option value="services">Services </option>
      <option value="domains">Domains </option>
      <option value="invoices">Invoices </option>
      <option value="tickets">Tickets </option>
    </select>
    <select name="field" id="searchfield" class="form-control input-sm">
      <option>Client ID</option>
      <option selected="selected">Client Name</option>
      <option>Company Name</option>
      <option>Email Address</option>
      <option>Address 1</option>
      <option>Address 2</option>
      <option>City</option>
      <option>State</option>
      <option>Postcode</option>
      <option>Country</option>
      <option>Phone Number</option>
      <option>CC Last Four</option>
    </select>
    <div class="input-group input-group-sm">
        <input type="text" name="q" class="form-control" />
        <div class="input-group-btn">
            <input type="submit" value="<?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['search'];?>
" class="btn btn-default" />
        </div>
    </div>
  </form>

</div>

<br />

<span class="header"><img src="images/icons/admins.png" alt="" width="16" height="16" class="absmiddle" /> <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['staffonline'];?>
</span>
<div class="smallfont"><?php echo $_smarty_tpl->tpl_vars['adminsonline']->value;?>
</div>

<div class="controls"><a href="#" onclick="sidebarClose();return false">&laquo; Minimise Sidebar</a></div>
<?php }
}
