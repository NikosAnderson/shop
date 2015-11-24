<?php /* Smarty version 3.1.27, created on 2015-11-24 16:46:24
         compiled from "C:\xampp3\htdocs\shop\templates\partials\header.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:12697565486508678e5_30124880%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4d39ca885b2de7b629da716b8f883a3cb30a289d' => 
    array (
      0 => 'C:\\xampp3\\htdocs\\shop\\templates\\partials\\header.tpl',
      1 => 1448379983,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12697565486508678e5_30124880',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5654865089ea77_89823789',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5654865089ea77_89823789')) {
function content_5654865089ea77_89823789 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '12697565486508678e5_30124880';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop</title>

    <link href="css/themes/default/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-slider.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/shop.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <?php echo '<script'; ?>
 src="js/html5shiv.js"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="js/respond.min.js"><?php echo '</script'; ?>
>
    <![endif]-->
</head>

<body>

    <?php echo $_smarty_tpl->getSubTemplate ('partials/navbar.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>


    <!-- Page Content -->
    <div class="container"><?php }
}
?>