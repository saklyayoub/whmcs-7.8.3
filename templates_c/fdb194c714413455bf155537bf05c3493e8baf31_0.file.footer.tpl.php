<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:52:06
  from '/var/www/html/admin/templates/blend/footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911c6061803_29961436',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fdb194c714413455bf155537bf05c3493e8baf31' => 
    array (
      0 => '/var/www/html/admin/templates/blend/footer.tpl',
      1 => 1569404630,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911c6061803_29961436 (Smarty_Internal_Template $_smarty_tpl) {
?>
        </div>
        <div class="clear"></div>

    </div>

    <div class="clear"></div>

    <div class="footerbar clearfix">
        <div class="pull-left">
            <a href="#">
                <i class="fas fa-angle-double-up"></i>
                Top
            </a>
        </div>
        <div class="text-right whmcs-link">
            Copyright &copy; <a href="http://www.whmcs.com/" target="_blank">WHMCompleteSolution</a>.  All Rights Reserved.
        </div>
    </div>

    <div class="intelligent-search-container">
        <form method="post" action="<?php echo routePath('admin-search-intellisearch');?>
" id="frmIntelligentSearch">
            <input type="hidden" name="token" value="<?php echo $_smarty_tpl->tpl_vars['csrfToken']->value;?>
">
            <input id="intelliSearchMoreOf" type="hidden" name="more" value="">
            <input id="intelliSearchHideInactive" type="hidden" name="hide_inactive" value="1">
            <input type="text" name="searchterm" id="inputIntelliSearchValue" data-toggle="tooltip" data-placement="bottom" data-trigger="manual" data-title="You must enter at least 3 characters">
            <input type="submit" style="display:none;">
        </form>
    </div>

    <div id="intelligentSearchResults">
        <div class="search-header">
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"global.numSearchResultsFound",'number'=>'<span class="search-result-count">0</span>'),$_smarty_tpl ) );?>

            <div class="pull-right">
                <button type="button" class="close" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
        <div class="search-results">
            <h5><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"clients.title"),$_smarty_tpl ) );?>
 (<span class="count"></span>)
                <i class="far fa-chevron-down"></i></h5>
            <ul class="clients"></ul>
            <h5><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"clientsummary.contacts"),$_smarty_tpl ) );?>
 (<span class="count"></span>)
                <i class="far fa-chevron-down"></i></h5>
            <ul class="contacts"></ul>
            <h5><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"services.title"),$_smarty_tpl ) );?>
 (<span class="count"></span>)
                <i class="far fa-chevron-down"></i></h5>
            <ul class="services"></ul>
            <h5><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"domains.title"),$_smarty_tpl ) );?>
 (<span class="count"></span>)
                <i class="far fa-chevron-down"></i></h5>
            <ul class="domains"></ul>
            <h5><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"invoices.title"),$_smarty_tpl ) );?>
 (<span class="count"></span>)
                <i class="far fa-chevron-down"></i></h5>
            <ul class="invoices"></ul>
            <h5><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"support.supporttickets"),$_smarty_tpl ) );?>
 (<span class="count"></span>)
                <i class="far fa-chevron-down"></i></h5>
            <ul class="tickets"></ul>
            <h5><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.otherResults"),$_smarty_tpl ) );?>
 (<span class="count"></span>)
                <i class="far fa-chevron-down"></i></h5>
            <ul class="others"></ul>
        </div>
        <div class="search-in-progress" style="display: none;">
            <i class="fas fa-spinner fa-spin"></i>
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.performingSearch"),$_smarty_tpl ) );?>

        </div>
        <div class="search-no-results" style="display: none;">
            <i class="fas fa-exclamation-triangle"></i>
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.noResultsFound"),$_smarty_tpl ) );?>
.<br>
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.tryAlternativeSearchTerm"),$_smarty_tpl ) );?>
.
        </div>
        <div class="session-expired" style="display: none;">
            <i class="fas fa-exclamation-triangle"></i>
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.sessionExpired"),$_smarty_tpl ) );?>
.<br>
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.refreshAndRetry"),$_smarty_tpl ) );?>
.
        </div>
        <div class="search-warning" style="display: none;">
            <i class="fas fa-exclamation-triangle"></i>
            <span class="warning-msg"></span>
        </div>
        <div class="error" style="display: none;">
            <i class="fas fa-exclamation-triangle"></i>
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"global.erroroccurred"),$_smarty_tpl ) );?>
.<br>
            <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"global.seeConsoleLog"),$_smarty_tpl ) );?>
.
        </div>
        <div class="search-footer">
            <a href="#" class="collapse-all"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"global.collapseAll"),$_smarty_tpl ) );?>
</a>
            <a href="#" class="expand-all hidden"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"global.expandAll"),$_smarty_tpl ) );?>
</a>
            <span class="realtime"><input type="checkbox" id="intelliSearchRealtime" data-size="mini" data-label-text="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.autoSearchOnType"),$_smarty_tpl ) );?>
" data-on-color="info" data-url="<?php echo routePath('admin-search-intellisearch-settings-autosearch');?>
"<?php if ($_smarty_tpl->tpl_vars['intelligentSearch']->value['autoSearchEnabled']) {?> checked<?php }?>></span>
            <span class="hide-inactive"><input type="checkbox" id="intelliSearchHideInactiveSwitch" data-size="mini" data-label-text="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"global.hideInactive"),$_smarty_tpl ) );?>
" checked="checked"></span>
        </div>
        <div class="hidden">
            <a class="search-more-results" data-type="placeholder">
                <i class="fas fa-info-circle"></i>
                <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"search.showMoreResults"),$_smarty_tpl ) );?>
.
            </a>
        </div>
    </div>

    <div id="greyout"></div>

<form id="frmmynotes">
    <input type="hidden" name="action" value="savenotes" />
    <input type="hidden" name="token" value="<?php echo $_smarty_tpl->tpl_vars['csrfToken']->value;?>
" />
    <div class="modal fade modal-my-notes" id="myNotes">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-warning">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['mynotes'];?>
</h4>
                </div>
                <div class="modal-body">
                    <textarea id="mynotesbox" name="notes" rows="12" class="form-control"><?php echo $_smarty_tpl->tpl_vars['admin_notes']->value;?>
</textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['cancel'];?>
</button>
                    <button type="button" class="btn btn-primary" onclick="notesclose('1')"><?php echo $_smarty_tpl->tpl_vars['_ADMINLANG']->value['global']['savechanges'];?>
</button>
                </div>
            </div>
        </div>
    </div>
</form>

<?php if ($_smarty_tpl->tpl_vars['clientLimitNotification']->value) {?>
    <div class="client-limit-notification client-limit-notification-form panel panel-<?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['class'];?>
" id="clientLimitNotification">
        <div class="panel-heading">
            <button type="button" class="close" id="btnClientLimitNotificationDismiss"><span aria-hidden="true">&times;</span></button>
            <h3 class="panel-title">
                <i class="fas <?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['icon'];?>
"></i>
                <span><?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['title'];?>
</span>
                <small>(<?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['numberOfActiveClients'];?>
 / <?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['clientLimit'];?>
)</small>
            </h3>
        </div>
        <div class="panel-body">
            <p><?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['body'];?>
</p>
            <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['upgradeUrl'];?>
" target="_blank" data-fetch-url="<?php echo routePath('admin-help-license-upgrade-data');?>
">
                <input type="hidden" name="token" value="<?php echo $_smarty_tpl->tpl_vars['csrfToken']->value;?>
">
                <input type="hidden" name="getupgradedata" value="1">
                <input type="hidden" name="license_key" value="" class="input-license-key">
                <input type="hidden" name="member_data" value="" class="input-member-data">
                <div class="links">
                    <a href="#" id="btnClientLimitNotificationDontShowAgain" class="btn btn-xs btn-link pull-right">Don't show this again</a>
                    <button type="submit" class="btn btn-xs btn-<?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['class'];
if ($_smarty_tpl->tpl_vars['clientLimitNotification']->value['autoUpgradeEnabled']) {?> hidden<?php }?>" id="btnClientLimitNotificationUpgrade">Upgrade Now</button>
                    <?php if ($_smarty_tpl->tpl_vars['clientLimitNotification']->value['learnMoreUrl']) {?>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['learnMoreUrl'];?>
" class="btn btn-xs <?php if ($_smarty_tpl->tpl_vars['clientLimitNotification']->value['autoUpgradeEnabled']) {?>btn-<?php echo $_smarty_tpl->tpl_vars['clientLimitNotification']->value['class'];
} else { ?>btn-link<?php }?>" target="_blank">Learn more &raquo;</a>
                    <?php }?>
                </div>
            </form>
        </div>
    </div>
<?php }?>

<div class="modal whmcs-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading" id="modalAjaxHeader">
                <button id="modalAjaxCloseSmall" type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="modalAjaxTitle">Title</h4>
            </div>
            <div class="modal-body panel-body" id="modalAjaxBody">
                Loading...
            </div>
            <div class="modal-footer panel-footer" id="modalAjaxFooter">
                <div id="modalFooterLeft"></div>
                <div class="pull-left loader" id="modalAjaxLoader">
                    <i class="fas fa-circle-notch fa-spin"></i> Loading...
                </div>
                <button id="modalAjaxClose" type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit" id="modalAjaxSubmit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

<?php echo $_smarty_tpl->tpl_vars['footeroutput']->value;?>


</body>
</html>
<?php }
}
