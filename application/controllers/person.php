<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class person extends indexControllder {

	function __construct(){
		parent::__construct();
		$this->load->model("mperson");
		$this->load->model("mcategory");
	}

	function getlistofcategory($category){
		$where  = array(
			"status"=>"active",
			"category" => $category
			);
		$subcategory = $this->mcategory->getsubcategory($category);
		$persons = $this->mperson->getCustom($where);
		$fogincontent = $this->load->view("person/listperson",array("persons"=>$persons),true);
		$sidebar = $this->load->view("person/sidebar",array("subcategory"=>$subcategory),true);
		$this->defaultdata["content"]=$this->load->view("person/template_person",array(
			"fogincontent"=>$fogincontent,
			"sidebar"=>$sidebar
			),true);
		$this->outtemp($this->defaultdata);
	}
	function details($id){
		
		$person = $this->mperson->get_where($id);
		$subcategory = $this->mcategory->getsubcategory($person["category"]);
		$tempdetais = $this->load->view("person/details",array("person"=>$person),true);
		$sidebar = $this->load->view("person/sidebar",array("subcategory"=>$subcategory),true);
		$this->defaultdata['content'] = $this->load->view("person/template_person",array(
			"fogincontent"=>$tempdetais,
			"sidebar"=>$sidebar
			),true);
		$this->outtemp($this->defaultdata);
	}
}