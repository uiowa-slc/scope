<?php
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
        'Picture' => 'Image',
        'PhotoGallery1' => 'Image',
        'PhotoGallery2' => 'Image',
        'PhotoGallery3' => 'Image',
        'PhotoGallery4' => 'Image',
        'PhotoGallery5' => 'Image',
        'PhotoGallery6' => 'Image',
        'PhotoGallery7' => 'Image',
        'PhotoGallery8' => 'Image',
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
        
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('Date')); 
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

  
}

class Show_Controller extends Page_Controller {


	/*
	public function SplitKeywords(){
	 	
	    $keywords = $this->MetaKeywords;
	    Debug::show($keywords);
	    Debug::show("hi");
	    
	    if($keywords){
		   $splitKeywords = explode(',', $keywords); 
		   Debug::show($splitKeywords);
	    }
	    
	    if($splitKeywords){
			$keywordsList = new ArrayList(); 
			foreach($splitKeywords as $data) { 
				$do=new DataObject(); 
				$do->Keyword = $data; 
				$keywordsList->push($do); 
			} 
			return $keywordsList; 
		}
		
		
    }
    
     public function test(){
	    $return = "<p>TEST</p>";
	    Debug::show("Hi");
	    return $return;	    
    }
    */
    
    
}