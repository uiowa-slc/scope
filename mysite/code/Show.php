<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TimeField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
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
        "SoldOut" => "Boolean"
        
        
        
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
        'HomePage' => 'HomePage'
        
        );
    
    
    //static $defaults = array ('ProvideComments' => '1',           
    //);
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->removeByName("Content");
        $fields->addFieldToTab('Root.Main', new UploadField('Picture', 'Featured image (4:3 or skinnier works)'));

        $fields->addFieldToTab('Root.Main', new CheckboxField('SoldOut', "<strong>Is the show sold out? (hides buy ticket links and displays a sold out note on the show)</strong>"));
        
        //$fields->addFieldToTab('Root.Main', new TextField('Artist(s)', 'Artist (if applicable)'));
        
        $fields->addFieldToTab('Root.Main', $dateField = new DateField(DBDate::class)); 
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'MM/dd/YYYY');
        
        $fields->addFieldToTab('Root.Main', new TimeField('Time', 'Show start time (put door open time in the description)'));
        $fields->addFieldToTab('Root.Main', new TextAreaField('Venue'));         
        
        $fields->addFieldToTab('Root.Main', new TextField('SpotifyEmbed', 'Spotify embed code - See <a href="https://developer.spotify.com/technologies/widgets/spotify-play-button/">these instructions for creating a Spotify embed code.</a>')); 
        $fields->addFieldToTab('Root.Main', new TextField('BuyTicketsOnlineLink'));
        $fields->addFieldToTab('Root.Main', new TextField('BuyTicketsInPersonLink'));

        $fields->addFieldToTab('Root.Main', new HTMLEditorField('Content')); 
        //$fields->addFieldToTab('Root.Main', new TextField('FacebookLink')); 
        //$fields->addFieldToTab('Root.Main', new TextField('TwitterLink')); 
        //$fields->addFieldToTab('Root.Main', new TextField('TumblrLink')); 
        //$fields->addFieldToTab('Root.Main', new TextField('PinterestLink'));                       
        
        return $fields;
    }
    
    public function getTimestamp(){

      $date = $this->Date . $this->Time;
      $timestamp = strtotime($date);
      return $timestamp;
    }
  
    public function getFormattedDate(){

      $date = $this->Date . $this->Time;
      $timestamp = strtotime($date);
      $formattedDate = date("F j, Y", $timestamp);
      return $formattedDate;
    }

    public function getDateTime(){

        if(isset($this->Date)){
            $dateTime = new DBDatetime;
            $dateTime->setValue($this->getTimestamp());
            return $dateTime;
        }

    }


}