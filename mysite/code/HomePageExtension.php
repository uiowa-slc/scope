<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TreeDropdownField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
class HomePageExtension extends DataExtension {
	private static $db = array(
		'BuyTicketsLink' => 'Text',
		'TwitterLink' => 'Text',
		'SoundwaveOverlay' => 'Boolean'
		
		);
	
	private static $has_one = array(
	   'FeaturedShow' => 'Show', //IGNORE, USE FEATUREDPAGE
	   'FeaturedPage' => SiteTree::class
   );
	
	public function updateCMSFields(FieldList $fields) {
		

		
		// $dl = DataList::create('Show');
		
	   //$temp = new GridField('FeaturedShow', null, $dl, GridFieldConfig_RelationEditor::create());
		$temp = new TreeDropdownField("FeaturedPageID", "Choose a page to show on the right:", "Show");
	   //$temp->setModelClass('Show');
		
		$fields->push($temp);
		$fields->push(new TextField('BuyTicketsLink'));
		$fields->push(new TextField('TwitterLink'));

	   //Soundwave graphic no longer being used
	   //$fields->addFieldToTab('Root.Main', new CheckboxField('SoundwaveOverlay', 'Check if you want the soundwave graphic to overlay the featured picture on the SCOPE homepage'));
		

		
	}

	public function getFeaturedShows(){
		return $this->FeaturedShow();
	}
	
	public function getShowHolder(){
		return ShowHolder::get();
	}
	

}