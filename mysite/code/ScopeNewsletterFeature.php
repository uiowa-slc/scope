<?php
/**
 * Defines the HomePage page type
 */
class ScopeNewsletterFeature extends NewsletterComponent {

   static $db = array(
	'Date' => 'Text',
	'Location' => 'Text',
	'Time' => 'Text',
	'LinkURL' => 'Text',
	'InSidebar' => 'Boolean'
   );
   
   
   
   static $has_one = array(
		'Image' => 'Image'
	  );


function getCMSFields() {
	$fields = parent::getCMSFields();
	
	/* Main Content Fields */
	$fields->removeFieldFromTab('Root.Main', 'Content');

	/*  content */
	$fields->addFieldToTab('Root.Main', new UploadField('Image', 'Image'));
	$fields->addFieldToTab('Root.Main', new TextField('Date', 'Date'));
	$fields->addFieldToTab('Root.Main', new TextField('LinkURL', 'Link URL'));

	$fields->addFieldToTab('Root.Main', new TextField('Location', 'Location'));
	$fields->addFieldToTab('Root.Main', new TextField('Time', 'Time'));
		$fields->addFieldToTab('Root.Main', new CheckboxField('InSidebar', 'Put feature in sidebar?'));

	$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Text'));
	
	return $fields;
	
   }}

class ScopeNewsletterFeature_Controller extends ContentController {

function init() {
	parent::init();
}
 
}
 
?>