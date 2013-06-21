<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class home extends adminController {

	function __construct(){
		parent::__construct();	
	}
	
	function index()
	{
		$this->output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array(),'title'=>"administrator | control panel"));
	}

	function slidermanager(){
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('slider');
			$crud->set_subject('slider');
			$crud->required_fields('title');
			$crud->set_field_upload("image","assets/uploads/files");
			$crud->columns('title','image','status');

			$output = $crud->render();
			$output->title="slider manager";
			$this->output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	function blogcategorymanager(){
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('blogcategory');
			$crud->set_subject('Blog category');
			$crud->required_fields('name');
			$crud->columns('name','status');
			$crud->set_relation("parent","blogcategory","name");
			$output = $crud->render();
			$output->title="blog category manager";
			$this->output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	function blogmanager(){
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('blog');
			$crud->set_subject('Blog manager');
			$crud->required_fields('title','content','category','image','status');
			$crud->columns('title','status');
			$crud->set_relation("category","blogcategory","name");
			$crud->set_relation("author","user","name");
			$crud->set_field_upload("image","assets/uploads/files");
			$crud->set_field_upload("thumb","assets/uploads/files");
			$crud->unset_fields("views","datecreate");
			$crud->display_as("shortcontent","Short description");
			$output = $crud->render();
			$output->title="Blog manager";
			$this->output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	function checkslugblog($slug){

	}



}
