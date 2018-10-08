<?php

use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\CMS\Controllers\ContentController;

class PageController extends ContentController {

	

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
	
	
	protected function init() {
		parent::init();

	}

	public function UpcomingShows(){
		//TODO: Make sure we only get upcoming shows
		
		$now = date('Y-m-d');
		$shows = Show::get()->filter(array(
			'Date:GreaterThanOrEqual' => $now
			))->sort(DBDate::class);

		$paginatedShows =  new PaginatedList($shows, $this->request);
		$paginatedShows->setPageLength(10);

		return $shows;


	}

	public function PreviousShows(){
		//TODO: Make sure we only get previous shows 
		$now = date('Y-m-d');
		$shows = Show::get()->filter(array(
			'Date:LessThan' => $now
			))->sort('Date DESC');

		return $shows;
	}

	public function paginatedPreviousShows() {
		$curDate = date("Y-m-d");
		$previousShows = $this->PreviousShows();		
		$paginatedItems = new PaginatedList($previousShows, $this->request);
		$paginatedItems->setPageLength(21);

		return $paginatedItems;
	}

	public function getShows($number = 5){
		 
		$shows = Show::get()->sort("Date DESC")->limit($number);

		return $shows;

	 }

}




