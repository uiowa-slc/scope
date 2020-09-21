<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;

class MySiteConfigExtension extends DataExtension {

	private static $db = array(
		'TicketsLink' => 'Text',
	);

	private static $has_one = array(

	);

	private static $owns = array(

	);
	private static $defaults = array(

	);

	public function updateCMSFields(FieldList $fields) {

		$fields->addFieldToTab('Root.Main', new TextField('TicketsLink', 'URL To Get Tickets'));

		return $fields;
	}

}
