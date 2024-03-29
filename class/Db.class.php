<?php

class Db extends PDO {

	const ENGINE = 'mysql';
	const HOST = 'localhost';
	const USER = 'root';
	const PASS = '';
	const DB = 'shop';

	private static $db_options = array(
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
    );

    private static $instance;

    public function __construct($database) {
    	try {
    		parent::__construct(self::ENGINE.':host='.self::HOST.';dbname='.$database.'', self::USER, self::PASS, self::$db_options);
    	} catch (Exception $e) {
			exit('MySQL Connect Error >> '.$e->getMessage());
		}
    }

    public static function getInstance($database = null) {
    	$database = !empty($database) ? $database : self::DB;
    	if (!isset(self::$instance)) {
    		self::$instance = new Db($database);
    	}
    	return self::$instance;
    }

    public static function getParamType($value) {
		return is_numeric($value) ? PDO::PARAM_INT : PDO::PARAM_STR;
	}

	public static function bindValues(&$query, $vars = array()) {
		foreach($vars as $key => $val) {
			$query->bindValue($key, $val, self::getParamType($val));
		}
		return true;
	}

	public static function count($sql, $vars = array()) {
		$query = self::_query($sql, $vars);
		return $query->rowCount();
	}

	public static function select($sql, $vars = array()) {
		$query = self::_query($sql, $vars);
		return $query->fetchAll();
	}

	public static function selectAll($sql, $vars = array()) {
		return self::select($sql, $vars);
	}

	public static function selectOne($sql, $vars = array()) {
		$result = self::select($sql, $vars);
		return !empty($result[0]) ? $result[0] : array();
	}

	public static function insert($sql, $vars = array()) {
		$query = self::_query($sql, $vars);
		return self::getInstance()->lastInsertId();
	}

	public static function update($sql, $vars = array()) {
		$query = self::_query($sql, $vars);
		return $query->rowCount();
	}

	public static function delete($sql, $vars = array()) {
		return self::update($sql, $vars);
	}

	private static function _query($sql, $vars = array()) {
		$db = self::getInstance();
		$query = $db->prepare($sql);
		self::bindValues($query, $vars);
		$query->execute();
		return $query;
	}
}