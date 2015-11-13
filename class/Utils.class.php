<?php
class Utils {

	public static function debug($array) {
		return '<pre>'.print_r($array, true).'</pre>';
	}

	/*
		Transforme une chaîne du type "setCreation_date" en "setCreationDate"
	*/
	public static function getCamelCase($str) {
		return lcfirst(str_replace(' ', '', ucwords(str_replace('_', ' ', $str))));
	}

	/*
	Coupe une chaine à la longueur $max_length en préservant les mots
	*/
	public static function cutString($text, $max_length, $end = '...') {
		// On défini une chaine qu'on va intercaller tous les X caractères en préservant les mots
		$sep = '[@]';

		// Si $max_length est positif et que la chaine $text est plus longue que $max_length
		if ($max_length > 0 && strlen($text) > $max_length) {
			// On intercalle la chaine $sep tous les X caractères
			$text = wordwrap($text, $max_length, $sep, true);
			// On découpe la chaine en plusieurs bouts dans un tableau
			$text = explode($sep, $text);
			// On retourne la première valeur du tableau et on concatène avec la chaine $end
			return $text[0].$end;
		}
		// On retourne la chaine telle qu'on l'a reçu
		return $text;
	}

	function formatAmount($amount, $currency = '&euro;') {
		return number_format($amount, 2, ',', ' ').$currency;
	}

}