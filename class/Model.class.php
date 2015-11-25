<?php

abstract class Model extends Core {

	public static function getById($id) {
		return self::get('SELECT * FROM '.$table.' WHERE id = :id', array(':id' => $id));
	}

	public static function get($sql, $vars) {
		$class = self::getClass();
		$result = Db::selectOne($sql, $vars);
		if (empty($result)) {
			return null;
		}
	    return new $class($result);
	}

	public static function getList($sql, $vars) {
		$class = self::getClass();
		$results = Db::selectAll($sql, $vars);

	    $items = array();
	    foreach($results as $result) {
	        $items[] = new $class($result);
	    }
	    return $items;
	}

}