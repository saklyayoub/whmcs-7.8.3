<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:52:05
  from '/var/www/html/admin/templates/blend/menu.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911c5cab4a8_46088389',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '16a591e3f59d2d5bc26518882792b180c1cd7916' => 
    array (
      0 => '/var/www/html/admin/templates/blend/menu.tpl',
      1 => 1569404630,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911c5cab4a8_46088389 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/var/www/html/vendor/smarty/smarty/libs/plugins/modifier.replace.php','function'=>'smarty_modifier_replace',),));
?>
<div class="navigation">
<ul id="menu">
<li><a id="Menu-Clients" <?php if (in_array("List Clients",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>href="clients.php"<?php }?> title="Clients"><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['title'];?>
</span><span class="visible-xs"><i class="fas fa-user"></i></span></a>
  <ul>
    <?php if (in_array("List Clients",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Clients-View_Search_Clients" href="clients.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['viewsearch'];?>
</a></li><?php }?>
    <?php if (in_array("Add New Client",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Clients-Add_New_Client" href="clientsadd.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['addnew'];?>
</a></li><?php }?>
    <?php if (in_array("List Services",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
    <li class="expand"><a id="Menu-Clients-Products_Services" href="<?php echo routePath('admin-services-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['title'];?>
</a>
        <ul>
        <li><a id="Menu-Clients-Products_Services-Shared_Hosting" href="<?php echo routePath('admin-services-shared');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listhosting'];?>
</a></li>
        <li><a id="Menu-Clients-Products_Services-Reseller_Accounts" href="<?php echo routePath('admin-services-reseller');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listreseller'];?>
</a></li>
        <li><a id="Menu-Clients-Products_Services-VPS_Servers" href="<?php echo routePath('admin-services-server');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listservers'];?>
</a></li>
        <li><a id="Menu-Clients-Products_Services-Other_Services" href="<?php echo routePath('admin-services-other');?>
">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listother'];?>
</a></li>
        </ul>
    </li>
    <?php }?>
    <?php if (in_array("List Addons",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Clients-Service_Addons" href="<?php echo routePath('admin-addons-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listaddons'];?>
</a></li><?php }?>
    <?php if (in_array("List Domains",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Clients-Domain_Registration" href="<?php echo routePath('admin-domains-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['services']['listdomains'];?>
</a></li><?php }?>
    <?php if (in_array("View Cancellation Requests",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Clients-Cancelation_Requests" href="cancelrequests.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['cancelrequests'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Affiliates",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Clients-Manage_Affiliates" href="affiliates.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['affiliates']['manage'];?>
</a></li><?php }?>
    <?php if (in_array("Mass Mail",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Clients-Mass_Mail_Tool" href="massmail.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['clients']['massmail'];?>
</a></li><?php }?>
  </ul>
</li>
<li><a id="Menu-Orders" <?php if (in_array("View Orders",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>href="orders.php"<?php }?> title="Orders"><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['title'];?>
</span><span class="visible-xs"><i class="fas fa-shopping-cart"></i></span></a>
  <ul>
    <?php if (in_array("View Orders",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Orders-List_All_Orders" href="orders.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listall'];?>
</a></li>
    <li><a id="Menu-Orders-Pending_Orders" href="orders.php?status=Pending">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listpending'];?>
</a></li>
    <li><a id="Menu-Orders-Active_Orders" href="orders.php?status=Active">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listactive'];?>
</a></li>
    <li><a id="Menu-Orders-Fraud_Orders" href="orders.php?status=Fraud">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listfraud'];?>
</a></li>
    <li><a id="Menu-Orders-Cancelled_Orders" href="orders.php?status=Cancelled">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['listcancelled'];?>
</a></li><?php }?>
    <?php if (in_array("Add New Order",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Orders-Add_New_Order" href="ordersadd.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['orders']['addnew'];?>
</a></li><?php }?>
  </ul>
</li>
<li><a id="Menu-Billing" <?php if (in_array("List Transactions",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>href="transactions.php"<?php }?> title="Billing"><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['title'];?>
</span><span class="visible-xs"><i class="fas fa-calculator"></i></span></a>
  <ul>
    <?php if (in_array("List Transactions",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Billing-Transactions_List" href="transactions.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['transactionslist'];?>
</a></li><?php }?>
    <?php if (in_array("List Invoices",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
    <li class="expand"><a id="Menu-Billing-Invoices" href="invoices.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['invoices']['title'];?>
</a>
        <ul>
        <li><a id="Menu-Billing-Invoices-Paid" href="invoices.php?status=Paid">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['paid'];?>
</a></li>
        <li><a id="Menu-Billing-Invoices-Draft" href="invoices.php?status=Draft">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['draft'];?>
</a></li>
        <li><a id="Menu-Billing-Invoices-Unpaid" href="invoices.php?status=Unpaid">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['unpaid'];?>
</a></li>
        <li><a id="Menu-Billing-Invoices-Overdue" href="invoices.php?status=Overdue">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['overdue'];?>
</a></li>
        <li><a id="Menu-Billing-Invoices-Cancelled" href="invoices.php?status=Cancelled">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['cancelled'];?>
</a></li>
        <li><a id="Menu-Billing-Invoices-Refunded" href="invoices.php?status=Refunded">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['refunded'];?>
</a></li>
        <li><a id="Menu-Billing-Invoices-Collections" href="invoices.php?status=Collections">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['collections'];?>
</a></li>
        <li><a id="Menu-Billing-Invoices-Payment_Pending" href="invoices.php?status=Payment%20Pending">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['paymentpending'];?>
</a></li>
        </ul>
    </li><?php }?>
    <?php if (in_array("View Billable Items",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li class="expand"><a id="Menu-Billing-Billable_Items" href="billableitems.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['title'];?>
</a>
        <ul>
        <li><a id="Menu-Billing-Billable_Items-Uninvoiced_Items" href="billableitems.php?status=Uninvoiced">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['uninvoiced'];?>
</a></li>
        <li><a id="Menu-Billing-Billable_Items-Recurring_Items" href="billableitems.php?status=Recurring">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['recurring'];?>
</a></li>
        <?php if (in_array("Manage Billable Items",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Billing-Billable_Items-Add_New" href="billableitems.php?action=manage">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billableitems']['addnew'];?>
</a></li><?php }?>
        </ul>
    </li><?php }?>
    <?php if (in_array("Manage Quotes",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li class="expand"><a id="Menu-Billing-Quotes" href="quotes.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['quotes']['title'];?>
</a>
        <ul>
        <li><a id="Menu-Billing-Quotes-Valid" href="quotes.php?validity=Valid">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['valid'];?>
</a></li>
        <li><a id="Menu-Billing-Quotes-Expired" href="quotes.php?validity=Expired">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['status']['expired'];?>
</a></li>
        <li><a id="Menu-Billing-Quotes-Create_New_Quote" href="quotes.php?action=manage">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['quotes']['createnew'];?>
</a></li>
        </ul>
    </li><?php }?>
    <?php if (in_array("Offline Credit Card Processing",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Billing-Offline_CC_Processing" href="offlineccprocessing.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['offlinecc'];?>
</a></li><?php }?>
    <?php if (in_array("View Gateway Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Billing-Gateway_Log" href="gatewaylog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['billing']['gatewaylog'];?>
</a></li><?php }?>
  </ul>
</li>
<li><a id="Menu-Support" <?php if (in_array("Support Center Overview",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>href="supportcenter.php"<?php }?> title="Support"><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['title'];?>
</span><span class="visible-xs"><i class="fas fa-comments"></i></span></a>
  <ul>
    <?php if (in_array("Support Center Overview",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Support-Support_Overview" href="supportcenter.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['supportoverview'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Announcements",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Support-Announcements" href="supportannouncements.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['announcements'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Downloads",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Support-Downloads" href="supportdownloads.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['downloads'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Knowledgebase",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Support-Knowledgebase" href="supportkb.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['knowledgebase'];?>
</a></li><?php }?>
    <?php if (in_array("List Support Tickets",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li class="expand"><a id="Menu-Support-Support_Tickets" href="supporttickets.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['supporttickets'];?>
</a>
        <ul>
        <li><a id="Menu-Support-Support_Tickets-Flagged_Tickets" href="supporttickets.php?view=flagged">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['flagged'];?>
</a></li>
        <li><a id="Menu-Support-Support_Tickets-All_Active_Tickets" href="supporttickets.php?view=active">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['allactive'];?>
</a></li>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['menuticketstatuses']->value, 'status');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['status']->value) {
?>
            <li><a id="Menu-Support-Support_Tickets-<?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['status']->value,' ','_');?>
" href="supporttickets.php?view=<?php echo $_smarty_tpl->tpl_vars['status']->value;?>
">- <?php echo $_smarty_tpl->tpl_vars['status']->value;?>
</a></li>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </ul>
    </li><?php }?>
    <?php if (in_array("Open New Ticket",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Support-Open_New_Ticket" href="supporttickets.php?action=open"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['opennewticket'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Predefined Replies",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Support-Predefined_Replies" href="supportticketpredefinedreplies.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['predefreplies'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Network Issues",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li class="expand"><a id="Menu-Support-Network_Issues" href="networkissues.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['title'];?>
</a>
        <ul>
        <li><a id="Menu-Support-Network_Issues-Open" href="networkissues.php">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['open'];?>
</a></li>
        <li><a id="Menu-Support-Network_Issues-Scheduled" href="networkissues.php?view=scheduled">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['scheduled'];?>
</a></li>
        <li><a id="Menu-Support-Network_Issues-Resolved" href="networkissues.php?view=resolved">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['resolved'];?>
</a></li>
        <li><a id="Menu-Support-Network_Issues-Create_New" href="networkissues.php?action=manage">- <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['networkissues']['addnew'];?>
</a></li>
        </ul>
    </li><?php }?>
  </ul>
</li>
<?php if (in_array("View Reports",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Reports" title="Reports" href="reports.php"><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['reports']['title'];?>
</span><span class="visible-xs"><i class="far fa-chart-bar"></i></span></a>
  <ul>
    <li><a id="Menu-Reports-Daily_Performance" href="reports.php?report=daily_performance">Daily Performance</a></li>
    <li><a id="Menu-Reports-Income_Forecast" href="reports.php?report=income_forecast">Income Forecast</a></li>
    <li><a id="Menu-Reports-Annual_Income_Report" href="reports.php?report=annual_income_report">Annual Income Report</a></li>
    <li><a id="Menu-Reports-New_Customers" href="reports.php?report=new_customers">New Customers</a></li>
    <li><a id="Menu-Reports-Ticket_Feedback_Scores" href="reports.php?report=ticket_feedback_scores">Ticket Feedback Scores</a></li>
    <li><a id="Menu-Reports-Batch_Invoice_PDF_Export" href="reports.php?report=pdf_batch">Batch Invoice PDF Export</a></li>
    <li><a id="Menu-Reports-More..." href="reports.php">More...</a></li>
  </ul>
</li><?php }?>
<li><a id="Menu-Utilities" title="Utilities" href=""><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['title'];?>
</span><span class="visible-xs"><i class="far fa-file-alt"></i></span></a>
  <ul>
    <?php if (in_array("Update WHMCS",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Update" href="update.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['update']['title'];?>
</a></li><?php }?>
    <?php if (in_array("WHMCSConnect",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-WHMCS_Connect" href="whmcsconnect.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['whmcsConnect']['whmcsConnectName'];?>
</a></li><?php }?>
    <?php if (in_array("View Module Queue",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Module_Queue" href="modulequeue.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['moduleQueue'];?>
</a></li><?php }?>
    <?php if (in_array("Email Marketer",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Email_Marketer" href="utilitiesemailmarketer.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['emailmarketer'];?>
</a></li><?php }?>
    <?php if (in_array("Link Tracking",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Link_Tracking" href="utilitieslinktracking.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['linktracking'];?>
</a></li><?php }?>
    <?php if (in_array("Calendar",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Calendar" href="calendar.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['calendar'];?>
</a></li><?php }?>
    <?php if (in_array("To-Do List",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-To-Do_List" href="todolist.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['todolist'];?>
</a></li><?php }?>
    <?php if (in_array("WHOIS Lookups",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-WHOIS_Lookups" href="whois.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['whois'];?>
</a></li><?php }?>
    <?php if (in_array("Domain Resolver Checker",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Domain_Resolver" href="utilitiesresolvercheck.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['domainresolver'];?>
</a></li><?php }?>
    <?php if (in_array("View Integration Code",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Integration_Code" href="systemintegrationcode.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['integrationcode'];?>
</a></li><?php }?>
    <?php if (in_array("Automation Status",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Database Status",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("System Cleanup Operations",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View PHP Info",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li class="expand"><a id="Menu-Utilities-System" href="#"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['system'];?>
</a>
        <ul>
        <?php if (in_array("Automation Status",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-System-Automation_Status" href="automationstatus.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['automationStatus'];?>
</a></li><?php }?>
        <?php if (in_array("Database Status",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-System-Database_Status" href="systemdatabase.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['dbstatus'];?>
</a></li><?php }?>
        <?php if (in_array("System Cleanup Operations",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-System-System_Cleanup" href="systemcleanup.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['syscleanup'];?>
</a></li><?php }?>
        <?php if (in_array("View PHP Info",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-System-PHP_Info" href="systemphpinfo.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['phpinfo'];?>
</a></li><?php }?>
        <?php if (in_array("View PHP Info",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-System-PhpCompat" href="<?php echo routePath('admin-utilities-system-phpcompat');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['phpcompat'];?>
</a></li><?php }?>
        </ul>
    </li><?php }?>
    <?php if (in_array("View Activity Log",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View Admin Log",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View Module Debug Log",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View Email Message Log",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View Ticket Mail Import Log",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View WHOIS Lookup Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li class="expand"><a id="Menu-Utilities-Logs" href="#"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['logs'];?>
</a>
        <ul>
        <?php if (in_array("View Activity Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Logs-Activity_Log" href="systemactivitylog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['activitylog'];?>
</a></li><?php }?>
        <?php if (in_array("View Admin Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Logs-Admin_Log" href="systemadminlog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['adminlog'];?>
</a></li><?php }?>
        <?php if (in_array("View Module Debug Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Logs-Module_Log" href="systemmodulelog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['modulelog'];?>
</a></li><?php }?>
        <?php if (in_array("View Email Message Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Logs-Email_Message_Log" href="systememaillog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['emaillog'];?>
</a></li><?php }?>
        <?php if (in_array("View Ticket Mail Import Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Logs-Ticket_Email_Import_Log" href="systemmailimportlog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['ticketmaillog'];?>
</a></li><?php }?>
        <?php if (in_array("View WHOIS Lookup Log",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Utilities-Logs-WHOIS_Lookup_Log" href="systemwhoislog.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['whoislog'];?>
</a></li><?php }?>
        </ul>
    </li><?php }?>
  </ul>
</li>
<li><a id="Menu-Addons" title="Addons" href="addonmodules.php"><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['utilities']['addonmodules'];?>
</span><span class="visible-xs"><i class="fas fa-cube"></i></span></a>
    <ul>
        <li><a id="Menu-Addons-AppsAndIntegrations" href="<?php echo routePath('admin-apps-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['appsAndIntegrations'];?>
</a></li>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['addon_modules']->value, 'displayname', false, 'module');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['module']->value => $_smarty_tpl->tpl_vars['displayname']->value) {
?>
            <li><a id="Menu-Addons-<?php echo $_smarty_tpl->tpl_vars['displayname']->value;?>
" href="addonmodules.php?module=<?php echo $_smarty_tpl->tpl_vars['module']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['displayname']->value;?>
</a></li>
        <?php
}
} else {
?>
            <li><a id="Menu-Addons-Marketplace-Link" class="autoLinked" href="https://marketplace.whmcs.com">Visit WHMCS Marketplace</a></li>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </ul>
</li>
<li><a id="Menu-Setup" title="Setup" href="<?php echo routePath('admin-setup-index');?>
"><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['title'];?>
</span><span class="visible-xs"><i class="fas fa-cog"></i></span></a>
  <ul>
    <?php if (in_array("Configure General Settings",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-General_Settings" href="configgeneral.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['general'];?>
</a></li><?php }?>
    <?php if (in_array("Apps and Integrations",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-AppsAndIntegrations" href="<?php echo routePath('admin-apps-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['appsAndIntegrations'];?>
</a></li><?php }?>
    <?php if (in_array("Configure Sign-In Integration",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Sign-In_Integrations" href="<?php echo routePath('admin-setup-authn-view');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['signInIntegrations'];?>
</a></li><?php }?>
    <?php if (in_array("Configure Automation Settings",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Automation_Settings" href="configauto.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['automation'];?>
</a></li><?php }?>
    <?php if (in_array("Manage MarketConnect",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Manage_MarketConnect" href="marketconnect.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['marketconnect'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Notifications",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Notifications" href="<?php echo routePath('admin-setup-notifications-overview');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['notifications']['title'];?>
</a></li><?php }?>
    <?php if (in_array("Manage Storage Settings",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Storage" href="<?php echo routePath('admin-setup-storage-index');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['storage'];?>
</a></li><?php }
if (in_array("Configure Administrators",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Admin Roles",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Two-Factor Authentication",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Manage API Credentials",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
    <li class="expand"><a id="Menu-Setup-Staff_Management" href="#"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['staff'];?>
</a>
        <ul>
        <?php if (in_array("Configure Administrators",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Staff_Management-Administrator_Users" href="configadmins.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['admins'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Admin Roles",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Staff_Management-Administrator_Roles" href="configadminroles.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['adminroles'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Two-Factor Authentication",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Staff_Management-Two-Factor_Authentication" href="configtwofa.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['twofa'];?>
</a></li><?php }?>
        <?php if (in_array("Manage API Credentials",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Staff_Management-API_Credentials" href="configapicredentials.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['apicredentials'];?>
</a></li><?php }?>
        </ul>
    </li><?php } else { ?>
    <li><a id="Menu-Setup-Staff_Management-My_Account" href="myaccount.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['myaccount'];?>
</a></li><?php }
if (in_array("Configure Currencies",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Payment Gateways",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Tax Configuration",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View Promotions",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
    <li class="expand"><a id="Menu-Setup-Payments" href="#"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['payments'];?>
</a>
        <ul>
        <?php if (in_array("Configure Currencies",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Payments-Currencies" href="configcurrencies.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['currencies'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Payment Gateways",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Payments-Payment_Gateways" href="configgateways.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['gateways'];?>
</a></li><?php }?>
        <?php if (in_array("Tax Configuration",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
            <li>
                <a id="Menu-Setup-Payments-Tax_Configuration" href="<?php echo routePath('admin-setup-payments-tax-index');?>
">
                    <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['tax'];?>

                </a>
            </li>
        <?php }?>
        <?php if (in_array("View Promotions",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Payments-Promotions" href="configpromotions.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['promos'];?>
</a></li><?php }?>
        </ul>
    </li><?php }
if (in_array("View Products/Services",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Product Addons",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Product Bundles",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Domain Pricing",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Domain Registrars",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Servers",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
    <li class="expand"><a id="Menu-Setup-Products_Services" href="#"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['products'];?>
</a>
        <ul>
        <?php if (in_array("View Products/Services",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Products_Services-Products_Services" href="configproducts.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['products'];?>
</a></li><?php }?>
        <?php if (in_array("View Products/Services",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Products_Services-Configurable_Options" href="configproductoptions.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['configoptions'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Product Addons",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Products_Services-Product_Addons" href="configaddons.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['addons'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Product Bundles",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Products_Services-Product_Bundles" href="configbundles.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['bundles'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Domain Pricing",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Products_Services-Domain_Pricing" href="configdomains.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['domainpricing'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Domain Registrars",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Products_Services-Domain_Registrars" href="configregistrars.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['registrars'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Servers",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Products_Services-Servers" href="configservers.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['servers'];?>
</a></li><?php }?>
        </ul>
    </li><?php }
if (in_array("Configure Support Departments",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Ticket Statuses",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Support Departments",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Spam Control",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
    <li class="expand"><a id="Menu-Setup-Support" href="#"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['support']['title'];?>
</a>
        <ul>
        <?php if (in_array("Configure Support Departments",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Support-Support_Departments" href="configticketdepartments.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['supportdepartments'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Ticket Statuses",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Support-Ticket_Statuses" href="configticketstatuses.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['ticketstatuses'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Support Departments",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Support-Escalation_Rules" href="configticketescalations.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['escalationrules'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Spam Control",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Support-Spam_Control" href="configticketspamcontrol.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['spam'];?>
</a></li><?php }?>
        </ul>
    </li><?php }?>
    <?php if (in_array("Configure Application Links",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Application_Links" href="configapplinks.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['applicationLinks'];?>
</a></li><?php }?>
    <?php if (in_array("Configure OpenID Connect",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-OpenID_Connect" href="configopenid.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['openIdConnect'];?>
</a></li><?php }?>
    <?php if (in_array("View Email Templates",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Email_Templates" href="configemailtemplates.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['emailtpls'];?>
</a></li><?php }?>
    <?php if (in_array("Configure Addon Modules",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Addons_Modules" href="configaddonmods.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['addonmodules'];?>
</a></li><?php }?>
    <?php if (in_array("Configure Client Groups",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Client_Groups" href="configclientgroups.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['clientgroups'];?>
</a></li><?php }?>
    <?php if (in_array("Configure Custom Client Fields",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Custom_Client_Fields" href="configcustomfields.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['customclientfields'];?>
</a></li><?php }?>
    <?php if (in_array("Configure Fraud Protection",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Fraud_Protection" href="configfraud.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['fraud'];?>
</a></li><?php }
if (in_array("Configure Order Statuses",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Security Questions",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("View Banned IPs",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Banned Emails",$_smarty_tpl->tpl_vars['admin_perms']->value) || in_array("Configure Database Backups",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
    <li class="expand"><a id="Menu-Setup-Other" href="#"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['other'];?>
</a>
        <ul>
        <?php if (in_array("Configure Order Statuses",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Other-Order_Statuses" href="configorderstatuses.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['orderstatuses'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Security Questions",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Other-Security_Questions" href="configsecurityqs.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['securityqs'];?>
</a></li><?php }?>
        <?php if (in_array("View Banned IPs",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Other-Banned_IPs" href="configbannedips.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['bannedips'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Banned Emails",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Other-Banned_Emails" href="configbannedemails.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['bannedemails'];?>
</a></li><?php }?>
        <?php if (in_array("Configure Database Backups",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Setup-Other-Database_Backups" href="configbackups.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['setup']['backups'];?>
</a></li><?php }?>
        </ul>
    </li><?php }?>
  </ul>
</li>
<li><a id="Menu-Help" title="Help" href=""><span class="hidden-xs"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['title'];?>
</span><span class="visible-xs"><i class="far fa-life-ring"></i></span></a>
  <ul>
    <li><a id="Menu-Help-Documentation" href="http://docs.whmcs.com/" target="_blank"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['docs'];?>
</a></li>
    <?php if (in_array("Main Homepage",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Help-License_Information" href="<?php echo routePath('admin-help-license');?>
"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['licenseinfo'];?>
</a></li><?php }?>
    <?php if (in_array("Configure Administrators",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?><li><a id="Menu-Help-Change_License_Key" href="licenseerror.php?licenseerror=change"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['changelicense'];?>
</a></li><?php }?>
    <?php if (in_array("Health and Updates",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
        <li>
            <a id="Menu-Help-Check_Health_Updates" href="systemhealthandupdates.php">
                <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['healthCheck']['menuTitle'];?>

            </a>
        </li>
    <?php }?>
    <?php if (in_array("View What's New",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
        <li>
            <a id="Menu-Help-Whats_New" href="javascript:openFeatureHighlights()">
                <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['whatsNew']['menuTitle'];?>

            </a>
        </li>
    <?php }?>
    <?php if (in_array("Configure General Settings",$_smarty_tpl->tpl_vars['admin_perms']->value)) {?>
        <li><a id="Menu-Help-Setup_Wizard" href="#" onclick="openSetupWizard();return false;"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['setupWizard'];?>
</a></li>
        <li><a id="Menu-Help-Get_Help" href="systemsupportrequest.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['support'];?>
</a></li>
    <?php }?>
    <li><a id="Menu-Help-Community_Forums" href="https://whmcs.community/?utm_source=InApp&utm_medium=Help_Menu" target="_blank"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['forums'];?>
</a></li>
  </ul>
</li>
</ul>
</div>
<?php }
}
