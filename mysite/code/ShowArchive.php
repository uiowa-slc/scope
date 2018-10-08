<?php

class ShowArchive extends Page {
	private static $db = array(
		
		);
	private static $has_one = array(
		);
	
	private static $allowed_children = array('Show');  
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		
		return $fields;
	}
}
