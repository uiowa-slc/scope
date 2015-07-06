<?php
class StaffPageExtension extends DataExtension {

	private static $db = array(

		'Title' => 'Text',
		'Class' => 'Text',
		'Email' => 'Text',
		);
	
	private static $has_one = array(
		'ProfilePic' => 'Image'
		);
	
	public function updateCMSFields(FieldList $fields) {
		
		
		
		$fields->push(new TextField('FirstName'));
		$fields->push(new TextField('LastName'));
		$fields->push(new TextField('Title'));
		$fields->push(new TextField('Class', 'Class (this is not in use)')); 
		$fields->push(new TextField('Email'));     
		$fields->push(new UploadField('ProfilePic', 'Profile Pic (Dimensions are 70X70)'));                  
		
		
	}

}
