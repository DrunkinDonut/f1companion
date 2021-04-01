<?php

class CMS_Core{

	public $Template, $Database;

	function __construct($server, $user, $pass, $db){
		$this->Database = new mysqli($server, $user, $pass, $db);
		$this->Database->set_charset('utf8');
		$this->Database->query("SET timezone = 'Europe/Warsaw'");

		/* obiekt Template */
		include APP_PATH.'models/m_template.php';
		$this->Template = new Template();

		/* start sesji */
		session_start();
	}

	function load($url){
		include $url;
	}

	function __destruct(){
		$this->Database->close();
	}
}