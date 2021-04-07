<?php

class CMS_Core{

	public $Template, $F1Api, $Database;

	function __construct($server, $user, $pass, $db){
		$this->Database = new mysqli($server, $user, $pass, $db);
		$this->Database->set_charset('utf8');
		$this->Database->query("SET timezone = 'Europe/Warsaw'");

		/* obiekt Template */
		include APP_PATH.'models/m_template.php';
		$this->Template = new Template();

		/* obiekt F1Api */
		include APP_PATH.'models/m_f1api.php';
		$this->F1Api = new F1Api();

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