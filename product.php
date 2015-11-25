<?php
require_once 'config/config.conf.php';

try {

    $id = !empty($_GET['id']) ? intval($_GET['id']) : 0;

    if (empty($id)) {
        throw new Exception('Undefined product id');
    }

    $bindings = array(':id' => $id);

    $result = Db::selectOne('SELECT * FROM product WHERE id = :id', $bindings);

    if (empty($result)) {
        throw new Exception('Undefined product');
    }

    $product = new Product($result);

    $bindings[':category'] = $product->getCategory();

    $results = Db::selectAll('SELECT * FROM product WHERE category = :category AND id != :id LIMIT 3', $bindings);

    $related_products = array();
    foreach($results as $result) {
        $related_products[] = new Product($result);
    }

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