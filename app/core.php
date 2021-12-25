<?php

class CMS_Core
{

	public $Template, $F1ApiData, $F1Companion, $Database;

	function __construct($server, $user, $pass, $db)
	{
		$this->Database = new mysqli($server, $user, $pass, $db);
		$this->Database->set_charset('utf8');
		$this->Database->query("SET timezone = 'Europe/Warsaw'");

		/* obiekt Template */
		include APP_PATH . 'models/m_template.php';
		$this->Template = new Template();

		/* obiekt F1Api */
		include APP_PATH . 'models/m_f1apidata.php';
		$this->F1ApiData = new F1ApiData();

		/* obiekt F1Companion */
		include APP_PATH . 'models/m_f1companion.php';
		$this->F1Companion = new F1Companion();

		/* start sesji */
		session_start();
	}

	function load($url)
	{
		include $url;
	}

	function __destruct()
	{
		$this->Database->close();
	}
}
