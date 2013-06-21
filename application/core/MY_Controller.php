<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
	}
	
}
require_once 'indexController.php';
require_once 'adminController.php';
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */