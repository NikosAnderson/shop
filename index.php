<?php
require_once 'config/config.conf.php';

try {

    $slider_pictures = glob('img/slider/*.{jpeg,jpg,png}', GLOB_BRACE);


    $results = Db::selectAll('SELECT * FROM product ORDER BY date DESC LIMIT 6');
    //echo Utils::debug($results);

    $products = array();
    foreach($results as $result) {
        $products[] = new Product($result);
    }
    //echo Utils::debug($products);

    $results = Db::selectAll('SELECT * FROM product ORDER BY rating DESC LIMIT 3');

    // Mélange le tableau
    shuffle($results);

    $best_rated_products = array();
    foreach($results as $result) {
        $best_rated_products[] = new Product($result);
    }

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