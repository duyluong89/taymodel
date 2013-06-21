<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class welcome extends indexControllder {

	function __construct(){
		parent::__construct();
		$this->load->model("mslider");
	}
	public function index()
	{
		$mslider = $this->mslider->get_where_custom("status","active");
		$this->defaultdata['pconfig'] = $this->pconfig;
		$this->defaultdata['js'] = $this->load->view("home/js", array(),true);
		$this->defaultdata['home'] = "home";
		$this->defaultdata['content'] = $this->load->view("home/slider", array("sliders"=>$mslider),true);

		$this->outtemp($this->defaultdata);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */