<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TreeDropdownField;

class HomePage extends Page {

	private static $db = array(
		'Headline' => 'Text',
		'ButtonText' => 'Text',
	);

	private static $has_one = array(
		'Photo' => Image::class,
		'AssociatedPage' => SiteTree::class,
	);

	private static $owns = array(
		'Photo',
	);

	private static $icon_class = 'font-icon-p-home';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Main", new LiteralField('test1', '<br> <h2>Content for when there are no upcoming shows</h2> <hr />'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField('Headline', 'Headline'), 'Content');
		$fields->addFieldToTab('Root.Main', new UploadField('Photo', 'Photo'), 'Content');
		$fields->addFieldToTab('Root.Main', TreeDropdownField::create('AssociatedPageID', 'Link to this page', SiteTree::class), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField('ButtonText', 'Button Text'), 'Content');

		return $fields;
	}
	public function RandomStaffMembers($limit = 3) {
		$staffPages = StaffPage::get()->Sort('RAND()')->Limit($limit);
		return $staffPages;
	}

}