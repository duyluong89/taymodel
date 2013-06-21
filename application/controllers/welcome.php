<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class welcome extends indexControllder {

	function __construct(){
		parent::__construct();
		$this->load->model("mslider");
	}
	public function index()
	{
		
		$this->load->view('welcome_message');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */