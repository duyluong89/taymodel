<?php
class mconfiguration extends MY_Model{
	function __construct(){
		$this->tableName="configuration";
	}
	
	function getConfig(){
		
		$table = $this->get_table();
		$this->db->where("status","default");
		$query=$this->db->get($table);
		$configs = $query->result();
		if(isset($configs) && is_array($configs))
			return $configs[0];
		return false;
	}
}
?>