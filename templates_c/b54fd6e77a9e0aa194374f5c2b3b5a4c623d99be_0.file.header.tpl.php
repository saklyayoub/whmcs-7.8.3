<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:52:05
  from '/var/www/html/admin/templates/blend/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911c5bed4c6_29828751',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b54fd6e77a9e0aa194374f5c2b3b5a4c623d99be' => 
    array (
      0 => '/var/www/html/admin/templates/blend/header.tpl',
      1 => 1569404630,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911c5bed4c6_29828751 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="<?php echo $_smarty_tpl->tpl_vars['charset']->value;?>
">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>WHMCS - <?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
</title>

    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">
    <link href="templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/css/all.min.css?v=<?php echo $_smarty_tpl->tpl_vars['versionHash']->value;?>
" rel="stylesheet" />
    <link href="<?php echo \WHMCS\Utility\Environment\WebHelper::getBaseUrl();?>
/assets/css/fontawesome-all.min.css" rel="stylesheet" />
    <?php echo '<script'; ?>
 type="text/javascript" src="templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/js/scripts.min.js?v=<?php echo $_smarty_tpl->tpl_vars['versionHash']->value;?>
"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
        var datepickerformat = "<?php echo $_smarty_tpl->tpl_vars['datepickerformat']->value;?>
",
            csrfToken="<?php echo $_smarty_tpl->tpl_vars['csrfToken']->value;?>
",
            adminBaseRoutePath = "<?php echo \WHMCS\Admin\AdminServiceProvider::getAdminRouteBase();?>
",
            whmcsBaseUrl = "<?php echo \WHMCS\Utility\Environment\WebHelper::getBaseUrl();?>
";

        <?php if ($_smarty_tpl->tpl_vars['jquerycode']->value) {?>
            $(document).ready(function(){
                <?php echo $_smarty_tpl->tpl_vars['jquerycode']->value;?>

            });
        <?php }?>
        <?php if ($_smarty_tpl->tpl_vars['jscode']->value) {?>
            <?php echo $_smarty_tpl->tpl_vars['jscode']->value;?>

        <?php }?>
    <?php echo '</script'; ?>
>

    <?php echo $_smarty_tpl->tpl_vars['headoutput']->value;?>


</head>
<body data-phone-cc-input="<?php echo $_smarty_tpl->tpl_vars['phoneNumberInputStyle']->value;?>
">

    <?php echo $_smarty_tpl->tpl_vars['headeroutput']->value;?>


    <div class="topbar">
        <div class="pull-left">
            <a href="index.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['home']['title'];?>
</a> |
            <a href="../"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['clientarea'];?>
</a> |
            <a href="#" data-toggle="modal" data-target="#myNotes"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['mynotes'];?>
</a> |
            <a href="myaccount.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['myaccount'];?>
</a> |
            <a id="logout" href="logout.php"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['logout'];?>
</a>
            <?php echo $_smarty_tpl->tpl_vars['topBarNotification']->value;?>

        </div>
        <div class="pull-right date hidden-xs">
            <?php echo $_smarty_tpl->tpl_vars['carbon']->value->translateTimestampToFormat(time(),"l, j F Y, H:i");?>

        </div>
    </div>
    <div class="clearfix"></div>

    <div class="header">
        <div class="logo">
            <a href="index.php"><img src="templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/images/logo.gif" border="0" /></a>
        </div>
        <div class="stats">
            <a href="orders.php?status=Pending">
                <span class="stat"><?php echo $_smarty_tpl->tpl_vars['sidebarstats']->value['orders']['pending'];?>
</span>
                <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['stats']['pendingorders'];?>

            </a> |
            <a href="invoices.php?status=Overdue">
                <span class="stat"><?php echo $_smarty_tpl->tpl_vars['sidebarstats']->value['invoices']['overdue'];?>
</span>
                <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['stats']['overdueinvoices'];?>

            </a> |
            <a href="supporttickets.php">
                <span class="stat"><?php echo $_smarty_tpl->tpl_vars['sidebarstats']->value['tickets']['awaitingreply'];?>
</span>
                <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['stats']['ticketsawaitingreply'];?>

            </a>
        </div>
    </div>

    <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/menu.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

    <div class="alert alert-warning global-admin-warning<?php if (!$_smarty_tpl->tpl_vars['globalAdminWarningMsg']->value) {?> hidden<?php }?>">
        <?php echo $_smarty_tpl->tpl_vars['globalAdminWarningMsg']->value;?>

    </div>

    <div id="sidebaropen"<?php if (!$_smarty_tpl->tpl_vars['minsidebar']->value) {?> style="display:none;"<?php }?>>
        <a href="#" onclick="sidebarOpen();return false">
            <img src="templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/images/opensidebar.png" border="0" />
        </a>
    </div>
    <div id="sidebar"<?php if ($_smarty_tpl->tpl_vars['minsidebar']->value) {?> style="display:none;"<?php }?>>
        <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
    </div>

    <div class="contentarea" id="contentarea"<?php if (!$_smarty_tpl->tpl_vars['minsidebar']->value) {?> style="margin-left:209px;"<?php }?>>

        <div style="float:left;width:100%;">

            <?php if ($_smarty_tpl->tpl_vars['helplink']->value) {?>
                <div class="contexthelp">
                    <a href="http://docs.whmcs.com/<?php echo $_smarty_tpl->tpl_vars['helplink']->value;?>
" target="_blank">
                        <img src="images/icons/help.png" border="0" align="absmiddle" />
                        <?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['help']['contextlink'];?>

                    </a>
                </div>
            <?php }?>

            <h1<?php if ($_smarty_tpl->tpl_vars['pagetitle']->value == $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['hometitle']) {?> class="pull-left"<?php }?>><?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
</h1>
<?php }
}
