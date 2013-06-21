<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class person extends indexControllder {

	function __construct(){
		parent::__construct();
		$this->load->model("mperson");
	}

	function getlistofcategory($category){
		$where  = array(
			"status"=>"active",
			"category" => $category
			);
		$persons = $this->mperson->get_where_custom("status","active");
		$fogincontent = $this->load->view("person/listperson",array("persons"=>$persons),true);
		$sidebar = $this->load->view("person/sidebar",array(),true);
		$this->defaultdata["content"]=$this->load->view("person/template_person",array(
			"fogincontent"=>$fogincontent,
			"sidebar"=>$sidebar
			),true);
		$this->outtemp($this->defaultdata);
	}
}