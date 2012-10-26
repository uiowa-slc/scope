<?php
/**
 * Defines the Minisite page type
 */
class NewsletterComponent extends Page {
	static $defaults = array(
	
	
	);
	
   static $db = array(
   

   );
   
   static $has_one = array(
   
   );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	
		$fields->removeFieldFromTab('Root.Main','TitleImage');
		$fields->removeFieldFromTab('Root.Main','IncludePageNameInContent');
		$fields->removeFieldFromTab('Root.Main','SubNavTitle');
		$fields->removeFieldFromTab('Root.Main','customCSS');
		$fields->removeFieldFromTab('Root.Images','ContentImage');
	$fields->removeFieldFromTab('Root.Content','Content1');
	$fields->removeFieldFromTab('Root.Content','Content2');
	
	
	$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content','Content:'));

	
	return $fields;
	
   }}

class NewsletterComponent_Controller extends ContentController {

function init() {
		parent::init();
	
		
		
	
	}
 
}
?>