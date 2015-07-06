<?php
class Venue extends Page {
    private static $db = array(
        'Capacity' => 'Text',
        'RoomDimensions' => 'Text',
        'StageDimensions' => 'Text',
        'Power' => 'Text',      
        'Risers' => 'Text',
        'Loading' => 'Text',      
        'Other' => 'Text'
        
        );
    private static $has_one = array(
        'Picture' => 'Image'
        );
    
    
    //static $defaults = array ('ProvideComments' => '1',           
    //);
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main', new TextField('Capacity'));
        $fields->addFieldToTab('Root.Main', new TextField('RoomDimensions', 'Room dimensions'));   
        $fields->addFieldToTab('Root.Main', new TextAreaField('StageDimensions', 'Stage dimensions'));
        $fields->addFieldToTab('Root.Main', new TextAreaField('Power'));   
        $fields->addFieldToTab('Root.Main', new TextAreaField('Loading'));
        $fields->addFieldToTab('Root.Main', new TextAreaField('Other'));
        $fields->addFieldToTab('Root.Main', new UploadField('Picture'));                         
        
        return $fields;
    }
}

class Venue_Controller extends Page_Controller {
   
}