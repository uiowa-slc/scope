<?php
/**
 * Defines the HomePage page type
 */
class ScopeNewsletter extends NewsletterComponent {
   static $db = array(
	'SidebarMainHeadline' => 'Text'
   );
   
   static $has_one = array(
	  
	);
   
   static $allowed_children = array ("ScopeNewsletterFeature");


function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab("Root.Main", new TextField("SidebarMainHeadline", "Sidebar headline"));
	/* Main Content Fields */
	$fields->removeFieldFromTab('Root.Main', 'Content');

	
	return $fields;
	
   }}

class ScopeNewsletter_Controller extends ContentController {

function init() {
	parent::init();
}
 
}
 
?>