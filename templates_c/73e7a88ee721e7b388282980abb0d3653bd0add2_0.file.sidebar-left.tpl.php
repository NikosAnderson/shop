<?php /* Smarty version 3.1.27, created on 2015-11-24 16:00:33
         compiled from "C:\xampp3\htdocs\shop\templates\partials\sidebar-left.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:663456547b9115daf3_19841220%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '73e7a88ee721e7b388282980abb0d3653bd0add2' => 
    array (
      0 => 'C:\\xampp3\\htdocs\\shop\\templates\\partials\\sidebar-left.tpl',
      1 => 1447430801,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '663456547b9115daf3_19841220',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56547b911699e0_91090960',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56547b911699e0_91090960')) {
function content_56547b911699e0_91090960 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '663456547b9115daf3_19841220';
?>
            <!-- Left Sidebar -->
            <div class="col-md-3 left-sidebar">
                <p class="lead">Categories</p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Category 1</a>
                    <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a>
                    <a href="#" class="list-group-item">Category 4</a>
                    <a href="#" class="list-group-item">Category 5</a>
                </div>

                <p class="lead">Featured products</p>
                <div class="thumbnail">
                    <img src="http://placehold.it/320x150" alt="">
                    <div class="caption">
                        <h4 class="pull-right">24.99 €</h4>
                        <h4><a href="#">First Product</a>
                        </h4>
                        <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                    <div class="ratings">
                        <p class="pull-right">12 reviews</p>
                        <p>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                        </p>
                    </div>
                    <div class="btns clearfix">
                        <a class="btn btn-info pull-left" href="product.php"><span class="glyphicon glyphicon-eye-open"></span> View</a>
                        <a class="btn btn-primary pull-right" href=""><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
                    </div>
                </div><!-- /.thumbnail -->

                <div class="thumbnail">
                    <img src="http://placehold.it/320x150" alt="">
                    <div class="caption">
                        <h4 class="pull-right">64.99 €</h4>
                        <h4><a href="#">Second Product</a>
                        </h4>
                        <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                    <div class="ratings">
                        <p class="pull-right">12 reviews</p>
                        <p>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                        </p>
                    </div>
                    <div class="btns clearfix">
                        <a class="btn btn-info pull-left" href="product.php"><span class="glyphicon glyphicon-eye-open"></span> View</a>
                        <a class="btn btn-primary pull-right" href=""><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.left-sidebar --><?php }
}
?>