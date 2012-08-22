<?php
class ShowArchive extends Page {
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
  
class ShowArchive_Controller extends Page_Controller {
     
}