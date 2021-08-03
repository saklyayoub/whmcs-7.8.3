<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:51:45
  from '/var/www/html/templates/six/footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911b1e3d537_54170760',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f72e6a1f493f50326f49e7083b77706473fd54d1' => 
    array (
      0 => '/var/www/html/templates/six/footer.tpl',
      1 => 1569404630,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911b1e3d537_54170760 (Smarty_Internal_Template $_smarty_tpl) {
?>
                </div><!-- /.main-content -->
                <?php if (!$_smarty_tpl->tpl_vars['inShoppingCart']->value && $_smarty_tpl->tpl_vars['secondarySidebar']->value->hasChildren()) {?>
                    <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
                        <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('sidebar'=>$_smarty_tpl->tpl_vars['secondarySidebar']->value), 0, true);
?>
                    </div>
                <?php }?>
            <div class="clearfix"></div>
        </div>
    </div>
</section>

<section id="footer">
    <div class="container">
        <a href="#" class="back-to-top"><i class="fas fa-chevron-up"></i></a>
        <p><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"copyrightFooterNotice",'year'=>$_smarty_tpl->tpl_vars['date_year']->value,'company'=>$_smarty_tpl->tpl_vars['companyname']->value),$_smarty_tpl ) );?>
</p>
    </div>
</section>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only"><?php echo $_smarty_tpl->tpl_vars['LANG']->value['close'];?>
</span>
                </button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body panel-body">
                <?php echo $_smarty_tpl->tpl_vars['LANG']->value['loading'];?>

            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-notch fa-spin"></i>
                    <?php echo $_smarty_tpl->tpl_vars['LANG']->value['loading'];?>

                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    <?php echo $_smarty_tpl->tpl_vars['LANG']->value['close'];?>

                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    <?php echo $_smarty_tpl->tpl_vars['LANG']->value['submit'];?>

                </button>
            </div>
        </div>
    </div>
</div>

<?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['template']->value)."/includes/generate-password.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

<?php echo $_smarty_tpl->tpl_vars['footeroutput']->value;?>


</body>
</html>
<?php }
}
