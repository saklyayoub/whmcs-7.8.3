<?php
/* Smarty version 3.1.33-p1, created on 2021-08-03 10:51:59
  from '/var/www/html/admin/templates/login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-p1',
  'unifunc' => 'content_610911bfed31b2_26888006',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '28103309cca1a46c4dca3fdca3825855da559861' => 
    array (
      0 => '/var/www/html/admin/templates/login.tpl',
      1 => 1569404630,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610911bfed31b2_26888006 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>WHMCS - Login</title>

        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">
        <link href="templates/login.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"><?php echo '</script'; ?>
>
          <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"><?php echo '</script'; ?>
>
        <![endif]-->
      </head>
      <body>
        <div class="login-container">
            <h1 class="logo">
                <a href="login.php">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['BASE_PATH_IMG']->value;?>
/whmcs.png" alt="WHMCS" />
                </a>
            </h1>
            <div class="login-body">
                <h2><?php echo $_smarty_tpl->tpl_vars['displayTitle']->value;?>
</h2>
                <?php if ($_smarty_tpl->tpl_vars['infoMsg']->value) {?>
                    <div id="alertLoginInfo" class="alert alert-info text-center" role="alert">
                        <?php echo $_smarty_tpl->tpl_vars['infoMsg']->value;?>

                    </div>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['successMsg']->value) {?>
                    <div id="alertLoginSuccess" class="alert alert-success text-center" role="alert">
                        <?php echo $_smarty_tpl->tpl_vars['successMsg']->value;?>

                    </div>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['errorMsg']->value) {?>
                    <div id="alertLoginError" class="alert alert-danger text-center" role="alert">
                        <?php echo $_smarty_tpl->tpl_vars['errorMsg']->value;?>

                    </div>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['step']->value == "login") {?>
                    <form method="post" action="dologin.php">
                        <input type="hidden" name="language" id="inputLanguage" />
                        <input type="hidden" name="redirect" value="<?php echo $_smarty_tpl->tpl_vars['redirectUri']->value;?>
" />
                        <div class="form-group">
                            <input type="text" name="username" class="form-control" placeholder="Username" autofocus />
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password" />
                        </div>
                        <?php if ($_smarty_tpl->tpl_vars['captcha']->value->isEnabled() && $_smarty_tpl->tpl_vars['captcha']->value->isEnabledForForm($_smarty_tpl->tpl_vars['captchaForm']->value)) {?>
                            <?php if ($_smarty_tpl->tpl_vars['captcha']->value->recaptcha->isEnabled() && !$_smarty_tpl->tpl_vars['captcha']->value->recaptcha->isInvisible()) {?>
                                <div class="form-group recaptcha-container"></div>
                            <?php }?>
                            <?php if (!$_smarty_tpl->tpl_vars['captcha']->value->recaptcha->isEnabled()) {?>
                                <div class="form-group captcha-container text-center">
                                    <p>
                                        Please enter the characters you see in the image below into the text box provided.
                                        This is required to prevent automated submissions.
                                    </p>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <img id="inputCaptchaImage" class="captchaimage" src="../includes/verifyimage.php" align="middle" />
                                        </div>

                                        <div class="col-xs-6">
                                            <input id="inputCaptcha" type="text" name="code" maxlength="5" class="form-control" autocomplete="off"/>
                                        </div>
                                    </div>
                                </div>
                            <?php }?>
                        <?php }?>
                        <div class="row">
                            <div class="col-sm-7">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="rememberme" value="1">
                                        Remember me
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <input type="submit" value="Login" class="btn btn-primary btn-block<?php echo $_smarty_tpl->tpl_vars['captcha']->value->getButtonClass($_smarty_tpl->tpl_vars['captchaForm']->value);?>
">
                            </div>
                        </div>
                    </form>
                <?php } elseif ($_smarty_tpl->tpl_vars['step']->value == "reset") {?>
                    <form action="login.php" method="post" id="<?php if ($_smarty_tpl->tpl_vars['verify']->value) {?>frmPasswordChange<?php } else { ?>frmResetPassword<?php }?>">
                        <input type="hidden" name="action" value="reset" />
                        <?php if ($_smarty_tpl->tpl_vars['verify']->value) {?>
                            <input type="hidden" name="sub" value="newPassword" />
                            <input type="hidden" name="verify" value="<?php echo $_smarty_tpl->tpl_vars['verify']->value;?>
" />
                            <div class="form-group">
                                <input type="password" id="password" name="password" class="form-control" placeholder="New Password" autofocus autocomplete="off" data-placement="left" data-trigger="manual" />
                                <span class="form-control-feedback glyphicon glyphicon-password"></span>
                            </div>
                            <div class="form-group">
                                <input type="password" id="passwordConfirm" name="password2" class="form-control" placeholder="New Password (verify)" autocomplete="off" data-placement="left" data-trigger="manual" />
                                <span class="form-control-feedback glyphicon glyphicon-password"></span>
                            </div>
                            <div class="form-group">
                                <input type="submit" id="setPasswordButton" value="Reset Password" class="btn btn-primary btn-block<?php echo $_smarty_tpl->tpl_vars['captcha']->value->getButtonClass($_smarty_tpl->tpl_vars['captchaForm']->value);?>
" />
                            </div>
                        <?php } else { ?>
                            <input type="hidden" name="sub" value="send" />
                            <div class="form-group">
                                <input type="text" name="email" class="form-control" placeholder="Username or Email address" autofocus />
                            </div>
                            <?php if ($_smarty_tpl->tpl_vars['captcha']->value->isEnabled() && $_smarty_tpl->tpl_vars['captcha']->value->isEnabledForForm($_smarty_tpl->tpl_vars['captchaForm']->value)) {?>
                                <?php if ($_smarty_tpl->tpl_vars['captcha']->value->recaptcha->isEnabled() && !$_smarty_tpl->tpl_vars['captcha']->value->recaptcha->isInvisible()) {?>
                                    <div class="form-group recaptcha-container"></div>
                                <?php }?>
                                <?php if (!$_smarty_tpl->tpl_vars['captcha']->value->recaptcha->isEnabled()) {?>
                                    <div class="form-group captcha-container text-center">
                                        <p>
                                            Please enter the characters you see in the image below into the text box provided.
                                            This is required to prevent automated submissions.
                                        </p>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <img id="inputCaptchaImage" class="captchaimage" src="../includes/verifyimage.php" align="middle" />
                                            </div>

                                            <div class="col-xs-6">
                                                <input id="inputCaptcha" type="text" name="code" maxlength="5" class="form-control" autocomplete="off"/>
                                            </div>
                                        </div>
                                    </div>
                                <?php }?>
                            <?php }?>
                            <div class="form-group">
                                <input type="submit" value="Reset Password" class="btn btn-primary btn-block<?php echo $_smarty_tpl->tpl_vars['captcha']->value->getButtonClass($_smarty_tpl->tpl_vars['captchaForm']->value);?>
" />
                            </div>
                        <?php }?>
                    </form>
                <?php } elseif ($_smarty_tpl->tpl_vars['step']->value == "twofa") {?>
                    <div class="text-center" align="center">
                        <?php echo $_smarty_tpl->tpl_vars['challengeHtml']->value;?>

                    </div>
                <?php } elseif ($_smarty_tpl->tpl_vars['step']->value == "twofabackupcode") {?>
                    <?php if ($_smarty_tpl->tpl_vars['successMsg']->value) {?>
                        <p>Write this down on paper and keep it safe.<br />It will be needed if you ever lose your 2nd factor device or it is unavailable to you again in future.</p>
                        <form method="post" action="dologin.php">
                            <input type="hidden" name="redirect" value="<?php echo $_smarty_tpl->tpl_vars['redirectUri']->value;?>
" />
                            <div class="form-group">
                                <input type="submit" value="Continue &raquo;" class="btn btn-primary btn-block" />
                            </div>
                        </form>
                    <?php } else { ?>
                        <form action="dologin.php" method="post">
                            <input type="hidden" name="backupcode" value="1" />
                            <input type="hidden" name="redirect" value="<?php echo $_smarty_tpl->tpl_vars['redirectUri']->value;?>
" />
                            <div class="form-group">
                                <input type="text" name="code" class="form-control" placeholder="Backup code" autofocus />
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Login" class="btn btn-primary btn-block" />
                            </div>
                        </form>
                    <?php }?>
                <?php }?>
            </div>
            <div class="footer">
                <?php if ($_smarty_tpl->tpl_vars['step']->value == "login") {?>
                    <?php if ($_smarty_tpl->tpl_vars['showPasswordResetLink']->value) {?>
                        <a href="login.php?action=reset">
                            Forgot password?
                        </a>
                    <?php } else { ?>
                        <span>&nbsp;</span>
                    <?php }?>
                <?php } elseif ($_smarty_tpl->tpl_vars['step']->value == "reset") {?>
                    <a href="login.php">
                        &laquo; Back to Login
                    </a>
                <?php } elseif ($_smarty_tpl->tpl_vars['step']->value == "twofa") {?>
                    <a href="login.php?<?php if ($_smarty_tpl->tpl_vars['redirectUri']->value) {?>redirect=<?php echo urlencode($_smarty_tpl->tpl_vars['redirectUri']->value);?>
&amp;<?php }?>backupcode=1">
                        Can't Access Your 2nd Factor Device?<br />Login using Backup Code
                    </a>
                <?php }?>
            </div>
        </div>
        <div class="language-chooser">
            <div class="btn-group pull-right">
                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <span id="languageName">Choose Language</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['languages']->value, 'language');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['language']->value) {
?>
                        <li><a href="#"><?php echo ucfirst($_smarty_tpl->tpl_vars['language']->value);?>
</a></li>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </ul>
            </div>
        </div>
        <div class="poweredby text-center">
            <a href="http://www.whmcs.com/" target="_blank">Powered by WHMCS</a>
        </div>
        <?php echo '<script'; ?>
 type="text/javascript">
            var recaptchaSiteKey = "<?php if ($_smarty_tpl->tpl_vars['captcha']->value) {
echo $_smarty_tpl->tpl_vars['captcha']->value->recaptcha->getSiteKey();
}?>";
        <?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 type="text/javascript" src="templates/login.min.js"><?php echo '</script'; ?>
>
    </body>
</html>
<?php }
}
