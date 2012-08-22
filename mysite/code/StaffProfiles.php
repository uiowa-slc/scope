<?php
//Briefly considered using this for  profile pages for staff

class StaffProfiles extends Page {
    static $db = array(
           
    );
    static $has_one = array(
    );
    
    static $allowed_children = array('Show');  
     
    public function getCMSFields() {
        $fields = parent::getCMSFields();
                                          
        return $fields;
    }
}
  
class StaffProfiles_Controller extends Page_Controller {
     
}