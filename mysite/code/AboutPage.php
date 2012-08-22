<?php
class AboutPage extends Page {


	static $db = array(
	'Contact' => 'HTMLText',
	'Contact2' => 'HTMLText'
	);
	
     public function getCMSFields() {
	 
        $fields = parent::getCMSFields();
     
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Contact'));
        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Contact2'));
                        
               
        return $fields;
    }

}
  
class AboutPage_Controller extends Page_Controller {
     
}