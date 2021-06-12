<?php

/**
 * Main controller class
 */

class Controller{
	
	protected $db;
	protected $fm;
	protected $mail;
	
	function __construct(){
		$this->db   = new Database();
  		$this->fm   = new Format();
  		$this->mail = new Mail();
	}

}