<?php
require_once 'config/config.conf.php';

try {

    $slider_pictures = glob('img/slider/*.{jpeg,jpg,png}', GLOB_BRACE);

    $products = Product::getList('SELECT * FROM product ORDER BY date DESC LIMIT 6');
    //echo Utils::debug($products);

    $best_rated_products = Product::getList('SELECT * FROM product ORDER BY rating DESC LIMIT 3');

    // Mélange le tableau
    shuffle($best_rated_products);

    $smarty = new Smarty();

    $tpl_vars = array(
        'pages' => $pages,
        'current_page' => $current_page,
        'slider_pictures' => $slider_pictures,
        'products' => $products,
        'best_rated_products' => $best_rated_products
    );

    $smarty->assign($tpl_vars);

    $smarty->display('index.tpl');

    // Equivalent des lignes 16 + 18
    //$smarty->display('index.tpl', $tpl_vars);

} catch (Exception $e) {
    echo $e->getMessage();
    exit();
}