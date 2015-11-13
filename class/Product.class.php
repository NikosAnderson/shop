<?php

class Product extends Model {

	private $id;
	private $category;
	private $name;
	private $description;
	private $price;
	private $picture;
	private $rating;
	private $date;

	public static $path_picture = 'img/product/';
	public static $default_picture = 'default.png';

	/* Getters */
	public function getId() {
		return $this->id;
	}
	public function getCategory() {
		return $this->category;
	}
	public function getName() {
		return ucfirst($this->name);
	}
	public function getDescription($max_length = 0, $end = '...') {
		return nl2br(Utils::cutString($this->description, $max_length, $end));
	}
	public function getPrice($currency = '&euro;') {
		return Utils::formatAmount($this->price, $currency = '&euro;');
	}
	public function getPicture() {
		$picture = self::$path_picture.self::$default_picture;
		if (!empty($this->picture)) {
			$picture_path = self::$path_picture.$this->picture;
			if (file_exists($picture_path)) {
				$picture = $picture_path;
			}
		}
		return $picture;
	}
	public function getRating() {
		return $this->rating;
	}
	// c.f php.net/strftime pour les formats
	public function getDate($format = '%A %d %B %Y') {
		$time = strtotime($this->date);
		$date = strftime($format, $time);
		$date = ucfirst(strtolower($date));
		$date = utf8_encode($date);
		return $date;
	}

	/* Setters */
	public function setId($id) {
		$this->id = $id;
	}
	public function setCategory($category) {
		$this->category = $category;
	}
	public function setName($name) {
		$this->name = $name;
	}
	public function setDescription($description) {
		$this->description = $description;
	}
	public function setPrice($price) {
		$this->price = $price;
	}
	public function setPicture($picture) {
		$this->picture = $picture;
	}
	public function setRating($rating) {
		$this->rating = $rating;
	}
	public function setDate($date) {
		$this->date = $date;
	}
}