<?php

use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use Symbiote\GridFieldExtensions\GridFieldAddNewMultiClass;
use SilverStripe\Forms\GridField\GridFieldAddNewButton;
use SilverStripe\Forms\GridField\GridField;
use  UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
class HomePage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

	private static $icon_class = 'font-icon-p-home';

	public function getCMSFields() {
		$f = parent::getCMSFields();

		$f->removeByName("Content");
		$f->removeByName("BackgroundImage");
		$f->removeByName("InheritSidebarItems");
		$f->removeByName("SidebarLabel");
		$f->removeByName("SidebarItem");

		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));

		$homePageAnnouncementGridFieldConfig = GridFieldConfig_RecordEditor::create();
		$homePageAnnouncementGridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));

		$homePageAnnouncementGridFieldConfig->addComponent(new GridFieldAddNewMultiClass());
		$homePageAnnouncementGridFieldConfig->removeComponentsByType(GridFieldAddNewButton::class);

		$homePageAnnouncementGridField = new GridField("HomePageAnnouncement", "Announcements that come before the latest articles", HomePageAnnouncement::get(), $gridFieldConfig);
		$f->addFieldToTab("Root.Main", $homePageAnnouncementGridField);

		return $f;
	}
	public function HomePageAnnouncements() {
		$features = HomePageAnnouncement::get();

		return $features;

	}
	
}