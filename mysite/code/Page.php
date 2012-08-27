<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);

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
	public static $allowed_actions = array (
	);

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
	
	public function getHeader(){
		$header = DataObject::get_one("Header");
		return $header;
	}
	
	public function getAboutPage(){
		$header = DataObject::get_one("AboutPage");
		return $header;
	}
	
	
	public function PaginatedPages() {
	
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
	    
	    return $pages;
	  }
	  
	public function ArchivePaginatedPages(){
	 	$showparent = ShowArchive::get()->filter(array(
    'Show.SiteTree.Title:ExactMatch' => 'Show Archive'))->First();
    
        $showparentID = $showparent->ID;
        
	    $shows = Show::get()->filter(array(
    'Show.SiteTree.ParentID:ExactMatch' => $showparentID));
    
    	$pages = new PaginatedList($shows, $this->request);    	
	    $pages->setPageLength(5);
	    
	    return $pages;
			
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