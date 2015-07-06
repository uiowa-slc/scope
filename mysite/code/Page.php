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
	
	
	public function init() {
		
		parent::init();

		// print_r(Object::get_extensions('StaffPage'));
	}

	public function PaginatedShows(){

		$shows = Show::get();

		print_r("shows");

		$paginatedShows =  new PaginatedList($shows, $this->request);
		$paginatedShows->setPageLength(10);

		return $shows;

	}

}
	  
// 	  public function PaginatedPages($sort = "Sort") {

// 		$showparent = ShowHolder::get()->filter(array(
// 			'Show.SiteTree.Title:ExactMatch' => 'Shows'))->First();

// 		$showparentID = $showparent->ID;

// 		$shows = Show::get()->filter(array(
// 			'Show.SiteTree.ParentID:ExactMatch' => $showparentID));

// 		$pages = new PaginatedList($shows, $this->request);    	
// 		$pages->setPageLength(10);

// 		$pages->sort($sort);

// 		return $pages;

// 	}

// public function getShows($number = 5){
	

	
// 	$showparent = ShowHolder::get()->filter(array(
// 		'Show.SiteTree.Title:ExactMatch' => 'Shows'))->First();
	
// 	$showparentID = $showparent->ID;
	
// 	$shows = Show::get()->filter(array(
// 		'Show.SiteTree.ParentID:ExactMatch' => $showparentID));
// 	$shows->limit($number);
// 	$shows->sort("Sort", "DESC");
	
// 	return $shows;
	
	
	
// }