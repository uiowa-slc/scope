<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);
	
	 public function SplitKeywords(){
	 	
	    $keywords = $this->MetaKeywords;
	    //Debug::show($this->Content);
	    //print_r("SplitKeywords Page");
	    
	    if($keywords){
		   $splitKeywords = explode(',', $keywords); 
	    }
	    
	    if (isset($splitKeywords)){
			$keywordsList = new ArrayList(); 
			foreach($splitKeywords as $data) { 
				$do=new DataObject(); 
				$do->Keyword = $data; 
				$keywordsList->push($do); 
			} 
			return $keywordsList;    
		}
		
		
    }
	


}
class Page_Controller extends ContentController {

	

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	 
	 
	  public function test(){
	    $return = "<p>TEST</p>";
	    //Debug::show("Hi");
	    return $return;	    
    }
	 
   
	public function init() {
	
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		Requirements::themedCSS('reset');
		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form'); 
	}
	
	function results($data, $form){
	
	  	$form->setPageLength(99999); //Makeshift way of disabling pagination for results
	  	$results = $form->getResults();
	
	  	$data = array( 
       'Results' => $results, 
       'Query' => $form->getSearchQuery(), 
       'Title' => 'Search Results' 
       );

       return $this->owner->customise($data)->renderWith(array('Page_results', 'Page')); 

	}
	
	public function getHeader(){
		$header = DataObject::get_one("Header");
		return $header;
	}
	
	public function getAboutPage(){
		$header = DataObject::get_one("AboutPage");
		return $header;
	}
	
	
	public function PaginatedPages($sort = "Sort") {
	
	    //$pages = new PaginatedList(Show::get(), $this->request);
	    
	    /*$members = Member::get()->filter(array(
    'Groups.Permissions.Code:ExactMatch' => 'ADMIN',
));*/
		$showparent = ShowHolder::get()->filter(array(
    'Show.SiteTree.Title:ExactMatch' => 'Shows'))->First();
    
        $showparentID = $showparent->ID;
        
	    $shows = Show::get()->filter(array(
    'Show.SiteTree.ParentID:ExactMatch' => $showparentID));
    
    	$pages = new PaginatedList($shows, $this->request);    	
	    $pages->setPageLength(10);
	    
	    $pages->sort($sort);
	    
	    return $pages;
	    
	    
	  }
	  
	 public function getShows($number = 5){
		 
		 //$shows = Show::get()->limit($number)->sort('Date', 'DESC');
		 
		 		$showparent = ShowHolder::get()->filter(array(
    'Show.SiteTree.Title:ExactMatch' => 'Shows'))->First();
    
        $showparentID = $showparent->ID;
        
	    $shows = Show::get()->filter(array(
    'Show.SiteTree.ParentID:ExactMatch' => $showparentID));
    	$shows->limit($number);
    	$shows->sort("Sort", "DESC");
		 
		 return $shows;
		 
		 
		 
	 }
	  
	public function ArchivePaginatedPages(){
	 	$showparent = ShowArchive::get()->filter(array(
    'Show.SiteTree.Title:ExactMatch' => 'Show Archive'))->First();
    
        $showparentID = $showparent->ID;
        
	    $shows = Show::get()->filter(array(
    'Show.SiteTree.ParentID:ExactMatch' => $showparentID));
    
    	$pages = new PaginatedList($shows, $this->request);    	
	    $pages->setPageLength(10);
	    
	    $pages->sort('Date')->reverse();
	    
	    return $pages;
			
	}
	
	public function getRandomStaff(){
		$staff = StaffPage::get();
		
		$homepageStaff = new ArrayList();
				
		$IDArray = $staff->getIDList();
		
		$staffIndex1 = array_rand($IDArray);	
		unset($IDArray[$staffIndex1]);
		
		$staffIndex2 = array_rand($IDArray);		
		unset($IDArray[$staffIndex2]);
		
		$staffIndex3 = array_rand($IDArray);		
		unset($IDArray[$staffIndex3]);
		
		$staff1 = $staff->byID($staffIndex1);				
		$staff2 = $staff->byID($staffIndex2);					
		$staff3 = $staff->byID($staffIndex3);
				
		$homepageStaff->add($staff1);
	    $homepageStaff->add($staff2);
		$homepageStaff->add($staff3);
		
		return $homepageStaff;
		
	}
	

	/*  
	public function returnTwitterFeed(){
	 
		$aantal = 1;
		$xml = simplexml_load_file('http://api.twitter.com/1/statuses/user_timeline.rss?screen_name=digital_rebels');
		 
		$i = 0;
		 
		foreach($xml->channel->item as $item)
		{
		 
		    $i++;
		 
		     if($i <= $aantal)
		    {
		 
		        echo '<a href="http://twitter.com/digital_rebels" target="_blank">' . $item->title. '</a>';
		 
		    }		 
		}
	}  
	*/

}