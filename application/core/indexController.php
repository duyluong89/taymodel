<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class indexControllder extends MY_Controller {

	public $pconfig ;
	public $defaultdata = array();
	function __construct(){
		parent::__construct();
		$this->load->model("mconfiguration","mconfig",true);
		$configs = $this->mconfig->getConfig();
		$this->pconfig = $configs;
		$this->defaultdata['mainmenu'] = $this->load->view("html/mainmenu", array(), true);
		$this->defaultdata['social']  = $this->load->view("html/social",array('pconfig'=>$this->pconfig),true);
	}

	function outtemp($data){
		$this->load->view("html/template",$data);
	}

	
}
