<?php /* Smarty version 3.1.27, created on 2015-11-24 16:55:47
         compiled from "C:\xampp3\htdocs\shop\templates\partials\carousel.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:504756548883ae7df2_91774014%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '15754a27e9a17badd2c9803ebec259f8386eafb6' => 
    array (
      0 => 'C:\\xampp3\\htdocs\\shop\\templates\\partials\\carousel.tpl',
      1 => 1448380404,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '504756548883ae7df2_91774014',
  'variables' => 
  array (
    'slider_pictures' => 0,
    'key' => 0,
    'picture' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56548883b2f637_24713324',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56548883b2f637_24713324')) {
function content_56548883b2f637_24713324 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '504756548883ae7df2_91774014';
?>

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="home-slider" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">

                                <?php
$_from = $_smarty_tpl->tpl_vars['slider_pictures']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['picture'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['picture']->_loop = false;
$_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['picture']->value) {
$_smarty_tpl->tpl_vars['picture']->_loop = true;
$foreach_picture_Sav = $_smarty_tpl->tpl_vars['picture'];
?>
                                <li data-target="#home-slider" data-slide-to="<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"<?php if ($_smarty_tpl->tpl_vars['key']->value === 0) {?> class="active"<?php }?>></li>
                                <?php
$_smarty_tpl->tpl_vars['picture'] = $foreach_picture_Sav;
}
?>
                            </ol>
                            <div class="carousel-inner">

                                <?php
$_from = $_smarty_tpl->tpl_vars['slider_pictures']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['picture'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['picture']->_loop = false;
$_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['picture']->value) {
$_smarty_tpl->tpl_vars['picture']->_loop = true;
$foreach_picture_Sav = $_smarty_tpl->tpl_vars['picture'];
?>
                                <div class="item<?php if ($_smarty_tpl->tpl_vars['key']->value === 0) {?> active<?php }?>">
                                    <img class="slide-image" src="<?php echo $_smarty_tpl->tpl_vars['picture']->value;?>
" alt="">
                                </div>
                                <?php
$_smarty_tpl->tpl_vars['picture'] = $foreach_picture_Sav;
}
?>

                            </div>
                            <a class="left carousel-control" href="#home-slider" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#home-slider" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div><?php }
}
?>