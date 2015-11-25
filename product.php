<?php
require_once 'config/config.conf.php';

try {

    $id = !empty($_GET['id']) ? intval($_GET['id']) : 0;

    if (empty($id)) {
        throw new Exception('Undefined product id');
    }

    $bindings = array(':id' => $id);

    $product = Product::getById($id);

    if (empty($product)) {
        throw new Exception('Undefined product');
    }

    $bindings[':category'] = $product->getCategory();

    $related_products = Product::getList('SELECT * FROM product WHERE category = :category AND id != :id LIMIT 3', $bindings);

    $smarty = new Smarty();

    $tpl_vars = array(
        'pages' => $pages,
        'current_page' => $current_page,
        'product' => $product,
        'related_products' => $related_products
    );

    $smarty->assign($tpl_vars);

    $smarty->display('product.tpl');

} catch (Exception $e) {

    exit($e->getMessage());
}