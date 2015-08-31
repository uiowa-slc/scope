<?php
//Briefly considered using this for  profile pages for staff

class StaffProfiles extends Page {
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

class StaffProfiles_Controller extends Page_Controller {
	
}