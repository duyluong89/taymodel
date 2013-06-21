<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class adminController extends MY_Controller {

	function __construct(){
		parent::__construct();
	}
	
	function output($output = null)
	{
		$this->load->view('admin/manager',$output);	

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */