<?php

require_once 'config/config.conf.php';

try {

	$search = Product::search($_GET);

	//echo Utils::debug($search);

	$smarty = new Smarty();

	$tpl_vars = array(
        'pages' => $pages,
        'current_page' => $current_page,
        'search' => $search
    );

    $smarty->assign($tpl_vars);

	$smarty->display('search.tpl');

} catch (Exception $e) {
	exit($e->getMessage());
}
