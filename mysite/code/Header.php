<?php
class Header extends Page {
  static $db = array(
  'FacebookLink' => 'Text',
  'TwitterLink' => 'Text',
  'PinterestLink' => 'Text',
  'TumblrLink' => 'Text',
   );
   
  static $has_one = array(
   );
  static $allowed_children = array();

  public function getCMSFields() {
        $fields = parent::getCMSFields();
     
        $fields->addFieldToTab('Root.Main', new TextField('FacebookLink'));
        $fields->addFieldToTab('Root.Main', new TextField('TwitterLink'));   
        $fields->addFieldToTab('Root.Main', new TextField('PinterestLink'));
        $fields->addFieldToTab('Root.Main', new TextField('TumblrLink')); 
          
                           
               
        return $fields;
    }
 


 
}
 
class Header_Controller extends Page_Controller {

  
}