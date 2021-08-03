<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:51:45
  from '/var/www/html/templates/six/includes/head.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911b1e08fc9_53984153',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '17c698a81b0f86d87330a47a2fa261af4b6ce752' => 
    array (
      0 => '/var/www/html/templates/six/includes/head.tpl',
      1 => 1569404630,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911b1e08fc9_53984153 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- Styling -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600|Raleway:400,700" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/css/all.min.css?v=<?php echo $_smarty_tpl->tpl_vars['versionHash']->value;?>
" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/assets/css/fontawesome-all.min.css" rel="stylesheet">
<link href="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/css/custom.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"><?php echo '</script'; ?>
>
<![endif]-->

<?php echo '<script'; ?>
 type="text/javascript">
    var csrfToken = '<?php echo $_smarty_tpl->tpl_vars['token']->value;?>
',
        markdownGuide = '<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"markdown.title"),$_smarty_tpl ) );?>
',
        locale = '<?php if (!empty($_smarty_tpl->tpl_vars['mdeLocale']->value)) {
echo $_smarty_tpl->tpl_vars['mdeLocale']->value;
} else { ?>en<?php }?>',
        saved = '<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"markdown.saved"),$_smarty_tpl ) );?>
',
        saving = '<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"markdown.saving"),$_smarty_tpl ) );?>
',
        whmcsBaseUrl = "<?php echo \WHMCS\Utility\Environment\WebHelper::getBaseUrl();?>
",
        requiredText = '<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"orderForm.required"),$_smarty_tpl ) );?>
',
        recaptchaSiteKey = "<?php if ($_smarty_tpl->tpl_vars['captcha']->value) {
echo $_smarty_tpl->tpl_vars['captcha']->value->recaptcha->getSiteKey();
}?>";
<?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['WEB_ROOT']->value;?>
/templates/<?php echo $_smarty_tpl->tpl_vars['template']->value;?>
/js/scripts.min.js?v=<?php echo $_smarty_tpl->tpl_vars['versionHash']->value;?>
"><?php echo '</script'; ?>
>

<?php if ($_smarty_tpl->tpl_vars['templatefile']->value == "viewticket" && !$_smarty_tpl->tpl_vars['loggedin']->value) {?>
  <meta name="robots" content="noindex" />
<?php }
}
}
