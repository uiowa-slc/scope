<?php
class StaffPage extends Page {

	static $db = array(
	'FirstName' => 'Text',
	'LastName' => 'Text',
	'Title' => 'Text',
	'Class' => 'Text',
	'Email' => 'Text',
	);
	
	static $has_one = array(
	'ProfilePic' => 'Image'
	);
	
	 public function getCMSFields() {
	 
        $fields = parent::getCMSFields();
     
        $fields->addFieldToTab('Root.Main', new TextField('FirstName'));
        $fields->addFieldToTab('Root.Main', new TextField('LastName'));
        $fields->addFieldToTab('Root.Main', new TextField('Title'));
        $fields->addFieldToTab('Root.Main', new TextField('Class')); 
        $fields->addFieldToTab('Root.Main', new TextField('Email'));     
        $fields->addFieldToTab('Root.Main', new UploadField('ProfilePic'));                  
               
        return $fields;
    }

}
class StaffPage_Controller extends Page_Controller {
}