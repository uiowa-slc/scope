<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\CMS\Controllers\ContentController;
/**
 * Defines the HomePage page type
 */
class ScopeNewsletterFeature extends NewsletterComponent {

	private static $db = array(
		'Date' => 'Text',
		'Location' => 'Text',
		'Time' => 'Text',
		'LinkURL' => 'Text',
		'InSidebar' => 'Boolean',
		'BuyTicketsLink' => 'Text'
		);
	
	
	
	private static $has_one = array(
		'Image' => Image::class
		);


	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		/* Main Content Fields */
		$fields->removeFieldFromTab('Root.Main', 'Content');

		/*  content */
		$fields->addFieldToTab('Root.Main', new UploadField(Image::class, Image::class));
		$fields->addFieldToTab('Root.Main', new TextField(DBDate::class, DBDate::class));
		$fields->addFieldToTab('Root.Main', new TextField('LinkURL', 'Link URL'));
		$fields->addFieldToTab('Root.Main', new TextField('BuyTicketsLink', 'Buy Tickets Online Link'));

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