<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:52:06
  from '277455392408c899580549a286d703d46175df4b' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911c6a9c0c6_89366524',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911c6a9c0c6_89366524 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="clearfix">
    <div style="float:left;"><img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/wizard/creditcard.png" alt="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.creditCard"),$_smarty_tpl ) );?>
"></div>
    <div style="float:left;padding:20px;width:390px;"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.creditCardSignup"),$_smarty_tpl ) );?>
</div>
</div>

<p><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.creditCardSignupIntro"),$_smarty_tpl ) );?>
</p>

<div class="signup-frm">
    <div class="alert alert-warning info-alert"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.creditCardSignupContact"),$_smarty_tpl ) );?>
</div>
    
    <div class="row bottom-margin-5">
        <div class="col-sm-6 bottom-margin-5">
            <input type="text" name="name" class="form-control" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.placeholderYourName"),$_smarty_tpl ) );?>
" />
        </div>
        <div class="col-sm-6 bottom-margin-5">
            <input type="text" name="email" class="form-control" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.placeholderEmail"),$_smarty_tpl ) );?>
" />
        </div>
        <div class="col-sm-6 bottom-margin-5">
            <input type="text" name="address" class="form-control" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.placeholderAddress"),$_smarty_tpl ) );?>
" />
        </div>
        <div class="col-sm-6 bottom-margin-5">
            <input type="text" name="city" class="form-control" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.placeholderCity"),$_smarty_tpl ) );?>
" />
        </div>
        <div class="col-sm-6 bottom-margin-5">
            <input type="text" name="state" class="form-control" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.placeholderState"),$_smarty_tpl ) );?>
" />
        </div>
        <div class="col-sm-6 bottom-margin-5">
            <input type="text" name="postcode" class="form-control" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.placeholderPostcode"),$_smarty_tpl ) );?>
" />
        </div>
        <div class="col-sm-6 bottom-margin-5">
            <select id="ccSignupCountry" name="country" class="form-control">
                <option value="US">United States</option>
            </select>
        </div>
        <div class="col-sm-6 bottom-margin-5">
            <input type="text" name="phone" class="form-control" placeholder="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.placeholderPhoneNumber"),$_smarty_tpl ) );?>
" />
        </div>
    </div>
    
    <p class="small"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.creditCardAgreeInfoSharing"),$_smarty_tpl ) );?>
</p>
</div>

<div class="signup-frm-success hidden">
    <div class="row">
        <div class="col-sm-10 col-sm-offset-1">
            <div class="alert alert-success text-center">
                <h2><i class="fas fa-check"></i> <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.creditCardApplicationStarted"),$_smarty_tpl ) );?>
</h2>
                <p>
                    <?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['lang'][0], array( array('key'=>"wizard.creditCardApplicationNextSteps"),$_smarty_tpl ) );?>

                </p>
            </div>
        </div>
    </div>
</div>
<?php }
}
