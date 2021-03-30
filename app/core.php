<?php

class CMS_Core{

	public $Table, $Database;

	function __construct($server, $user, $pass, $db){
		$this->Database = new mysqli($server, $user, $pass, $db);
		$this->Database->set_charset('utf8');
		$this->Database->query("SET timezone = 'Europe/Warsaw'");

		/* obiekt Table */
		// include APP_PATH.'models/m_table.php';
		// $this->Table = new Table();

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