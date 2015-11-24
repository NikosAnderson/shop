<?php /* Smarty version 3.1.27, created on 2015-11-24 17:50:33
         compiled from "C:\xampp3\htdocs\shop\templates\index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:255575654955919b039_66870912%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4219321e8bde3a024b482dc00321f81d58d4a75e' => 
    array (
      0 => 'C:\\xampp3\\htdocs\\shop\\templates\\index.tpl',
      1 => 1448383831,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '255575654955919b039_66870912',
  'variables' => 
  array (
    'products' => 0,
    'product' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_56549559204558_21344668',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_56549559204558_21344668')) {
function content_56549559204558_21344668 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '255575654955919b039_66870912';
echo $_smarty_tpl->getSubTemplate ("partials/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>


    <div class="row">

            <?php echo $_smarty_tpl->getSubTemplate ('partials/sidebar-left.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>


            <div class="col-md-9">

                <?php echo $_smarty_tpl->getSubTemplate ('partials/carousel.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>


                <div class="row products">

                    <?php
$_from = $_smarty_tpl->tpl_vars['products']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['product'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['product']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->_loop = true;
$foreach_product_Sav = $_smarty_tpl->tpl_vars['product'];
?>
                    <div class="product col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="<?php echo $_smarty_tpl->tpl_vars['product']->value->picture;?>
" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><?php echo $_smarty_tpl->tpl_vars['product']->value->price;?>
</h4>
                                <h4><a href="#"><?php echo $_smarty_tpl->tpl_vars['product']->value->title;?>
</a>
                                </h4>
                                <p><?php echo $_smarty_tpl->tpl_vars['product']->value->getDescription(50);?>
</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                            <div class="btns clearfix">
                                <a class="btn btn-info pull-left" href="product.php"><span class="glyphicon glyphicon-eye-open"></span> View</a>
                                <a class="btn btn-primary pull-right" href="product.php"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
                            </div>
                        </div><!-- /.thumbnail -->
                    </div><!-- .product -->
                    <?php
$_smarty_tpl->tpl_vars['product'] = $foreach_product_Sav;
}
?>

                </div><!-- /.row -->

            </div><!-- col-md-9 -->

        </div><!-- /.row -->

<?php echo $_smarty_tpl->getSubTemplate ("partials/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);

}
}
?>