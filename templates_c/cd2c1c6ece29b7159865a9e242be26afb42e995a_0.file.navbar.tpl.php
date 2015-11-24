<?php /* Smarty version 3.1.27, created on 2015-11-24 16:46:24
         compiled from "C:\xampp3\htdocs\shop\templates\partials\navbar.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:27742565486509f5a65_34688289%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cd2c1c6ece29b7159865a9e242be26afb42e995a' => 
    array (
      0 => 'C:\\xampp3\\htdocs\\shop\\templates\\partials\\navbar.tpl',
      1 => 1448379700,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '27742565486509f5a65_34688289',
  'variables' => 
  array (
    'pages' => 0,
    'current_page' => 0,
    'page_url' => 0,
    'page_name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56548650bc46a3_71140649',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56548650bc46a3_71140649')) {
function content_56548650bc46a3_71140649 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '27742565486509f5a65_34688289';
?>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Menu</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Shop</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <?php
$_from = $_smarty_tpl->tpl_vars['pages']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['page_name'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['page_name']->_loop = false;
$_smarty_tpl->tpl_vars['page_url'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['page_url']->value => $_smarty_tpl->tpl_vars['page_name']->value) {
$_smarty_tpl->tpl_vars['page_name']->_loop = true;
$foreach_page_name_Sav = $_smarty_tpl->tpl_vars['page_name'];
?>
                    <li<?php if ($_smarty_tpl->tpl_vars['current_page']->value === $_smarty_tpl->tpl_vars['page_url']->value) {?> class="active"<?php }?>>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['page_url']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['page_name']->value;?>
</a>
                    </li>
                    <?php
$_smarty_tpl->tpl_vars['page_name'] = $foreach_page_name_Sav;
}
?>
                </ul>

                <form class="navbar-form navbar-right" role="search" action="search.php" method="GET">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit"><span class=" glyphicon glyphicon-search"></span></button>
                        </span>
                    </div>
                </form>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav><?php }
}
?>