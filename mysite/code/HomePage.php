<?php
class HomePage extends Page {
  static $db = array(
  'BuyTicketsLink' => 'Text',
  'TwitterLink' => 'Text'
   
   );
   
  static $has_one = array(
   'FeaturedShow' => 'Show', //IGNORE, USE FEATUREDPAGE
   'FeaturedPage' => 'SiteTree'
   );
  
   public function getCMSFields() {
   
	   $fields = parent::getCMSFields();
	   
	   $dl = DataList::create('Show');
	   
	   //$temp = new GridField('FeaturedShow', null, $dl, GridFieldConfig_RelationEditor::create());
	   $temp = new TreeDropdownField("FeaturedPageID", "Choose a page to show on the right:", "Show");
	   //$temp->setModelClass('Show');
	 	   
	   $fields->addFieldToTab('Root.Main', $temp);
	   $fields->addFieldToTab('Root.Main', new TextField('BuyTicketsLink'));
	   $fields->addFieldToTab('Root.Main', new TextField('TwitterLink'));      

	
	   return $fields;
   
   }

   public function getFeaturedShows(){
	   return $this->FeaturedShow();
   }
   
   public function getShowHolder(){
	   return ShowHolder::get();
   }
  
  
 
}
 
class HomePage_Controller extends Page_Controller {

  
}