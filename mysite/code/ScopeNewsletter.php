<?php
/**
 * Defines the HomePage page type
 */
class ScopeNewsletter extends NewsletterComponent {
	private static $db = array(
		'SidebarMainHeadline' => 'Text'
		);
	
	private static $has_one = array(
		
		);
	
	private static $allowed_children = array ("ScopeNewsletterFeature");


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