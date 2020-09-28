<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TimeField;
use SilverStripe\ORM\FieldType\DBDatetime;

class Show extends Page {

	private static $db = array(
		'Artist' => 'Text',
		'Date' => 'Date',
		'Time' => 'Time',
		'DoorsOpenTime' => 'Text',
		'Venue' => 'Text',
		'SpotifyLink' => 'Text',
		'SpotifyEmbed' => 'HTMLText',
		'BuyTicketsOnlineLink' => 'Text',
		'BuyTicketsInPersonLink' => 'Text',
		'TwitterLink' => 'Text',
		'TumblrLink' => 'Text',
		'FacebookLink' => 'Text',
		'PinterestLink' => 'Text',
		'TwitterText' => 'Text',
		"SoldOut" => "Boolean",
		"StreamLink" => "Text",
		// "StreamButtonTitle" => "Text",

	);

	private static $has_one = array(
		'Picture' => Image::class,
		'PhotoGallery1' => Image::class,
		'PhotoGallery2' => Image::class,
		'PhotoGallery3' => Image::class,
		'PhotoGallery4' => Image::class,
		'PhotoGallery5' => Image::class,
		'PhotoGallery6' => Image::class,
		'PhotoGallery7' => Image::class,
		'PhotoGallery8' => Image::class,
		'HomePage' => 'HomePage',

	);

	private static $owns = array(
		'Picture',
	);

	//static $defaults = array ('ProvideComments' => '1',
	//);
	private static $show_in_sitetree = false;
	private static $allowed_children = [];

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Content");
		$fields->removeByName("Metadata");
		$fields->addFieldToTab('Root.Main', new UploadField('Picture', 'Featured image (4:3 or skinnier works best)'));

		$fields->addFieldToTab('Root.Main', CheckboxField::create('SoldOut', "Is the show sold out?")->setDescription('This option hides "buy ticket links" and displays a sold out note on the show'));

		//$fields->addFieldToTab('Root.Main', new TextField('Artist(s)', 'Artist (if applicable)'));

		$fields->addFieldToTab('Root.Main', $dateField = new DateField('Date'));

		$fields->addFieldToTab('Root.Main', TimeField::create('Time', 'Show start time')->setDescription('Doors open time should be in the longer "Content" field below'));
		$fields->addFieldToTab('Root.Main', TextField::create('Venue', 'Location')->setDescription('Only fill out if the event has an in-person venue.'));

		$fields->addFieldToTab('Root.Main', TextField::create('StreamLink', 'Streaming link')->setDescription('Please include the full URL including https://, example: https://www.twitch.tv/scope_productions'));

		$fields->addFieldToTab('Root.Main', new TextField('SpotifyEmbed', 'Spotify embed code'));
		$fields->addFieldToTab('Root.Main', new TextField('BuyTicketsOnlineLink'));
		$fields->addFieldToTab('Root.Main', new TextField('BuyTicketsInPersonLink'));

		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Content')->addExtraClass('stacked'));
		//$fields->addFieldToTab('Root.Main', new TextField('FacebookLink'));
		//$fields->addFieldToTab('Root.Main', new TextField('TwitterLink'));
		//$fields->addFieldToTab('Root.Main', new TextField('TumblrLink'));
		//$fields->addFieldToTab('Root.Main', new TextField('PinterestLink'));

		return $fields;
	}

	public function getTimestamp() {

		$date = $this->Date . $this->Time;
		$timestamp = strtotime($date);
		return $timestamp;
	}

	public function getFormattedDate() {

		$date = $this->Date . $this->Time;
		$timestamp = strtotime($date);
		$formattedDate = date("F j, Y", $timestamp);
		return $formattedDate;
	}

	public function getDateTime() {

		if (isset($this->Date)) {
			$dateTime = new DBDatetime;
			$dateTime->setValue($this->getTimestamp());
			return $dateTime;
		}
	}

	public function StreamButtonText() {
		$text = 'View Stream';

		if ($this->StreamType() == 'Twitch') {
			$text = "View on Twitch";
		}

		return $text;

	}
	public function StreamType() {
		$url = $this->StreamLink;
		$locationType = 'Other';
		if ($url) {
			$domain = $this->parseDomain($url);

			if ($domain) {

				if (strpos($domain, 'twitch.tv') !== FALSE) {

					$locationType = 'Twitch';
				}

			}
		}

		return $locationType;
	}

	private function parseDomain($url) {
		$parsedUrl = parse_url($url);
		if (isset($parsedUrl["host"])) {
			$host = $parsedUrl["host"];
			return $host;
		}
	}

	public function isFuture() {
		//echo strtotime($this->Date).' '.time();

		if (!$this->Date) {
			return false;
		}

		$midnight = new \DateTime();
		$midnight->setTimestamp(strtotime($this->Date))->modify('tomorrow')->setTime(0, 0);

		if ($midnight->getTimestamp() > time()) {
			return true;
		} else {
			return false;
		}
	}

	public function isPast() {

		if (!$this->Date) {
			return false;
		}

		$midnight = new \DateTime();
		$midnight->setTimestamp(strtotime($this->Date))->modify('tomorrow')->setTime(0, 0);

		if ($midnight->getTimestamp() < time()) {
			return true;
		} else {
			return false;
		}
	}
}