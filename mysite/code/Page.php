<?php
class Page extends SiteTree {

	private static $db = array(
		);

	private static $has_one = array(
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
	
	
	public function init() {
		
		parent::init();

		// print_r(Object::get_extensions('StaffPage'));
	}

	public function UpcomingShows(){
		//TODO: Make sure we only get upcoming shows
		$shows = Show::get();

		$paginatedShows =  new PaginatedList($shows, $this->request);
		$paginatedShows->setPageLength(10);

		return $shows;

	}

	public function PreviousShows(){
		//TODO: Make sure we only get previous shows
		$shows = Show::get();
		return $shows;
	}

	function paginatedPreviousShows() {
		$curDate = date("Y-m-d");
		$previousShows = $this->PreviousShows();		
		$paginatedItems = new PaginatedList($previousShows, $this->request);
		$paginatedItems->setPageLength(20);
		return $paginatedItems;
	}

}