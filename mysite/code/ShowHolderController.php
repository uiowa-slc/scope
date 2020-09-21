<?php
use SilverStripe\Control\HTTPRequest;
use SilverStripe\View\ArrayData;
use SilverStripe\ORM\PaginatedList;
class ShowHolderController extends PageController {

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
	private static $allowed_actions = array(
		'year'
	);

	private static $url_handlers = array(
		'year//$year' => 'year'
	);

	public function init() {
		parent::init();

	}

	public function year(HTTPRequest $request) {

		$year = $request->param('year');
		
		if(!is_numeric($year)){
			return $this->httpError('404');
		}

		//Todo something better than partial match, probably greater than/equal 1-1-$year and less than or equal to 12-31-$year


		$shows = Show::get()->filter(array('Date:PartialMatch' => $year))->sort('Date DESC');

		$data = new ArrayData(array(

			'paginatedPreviousShows' => $shows
		));

		return $this->customise($data)->renderWith(array('ShowHolder', 'Page'));

	}
	// public function NewsPosts() {

	// 	$memberId = $this->EmailAddress;

	// 	if (isset($memberId)) {
	// 		$url = 'http://studentlife.uiowa.edu/news/rss?member='.$memberId;
	// 		return $this->RSSDisplay(20, $url);
	// 	} else {
	// 		return false;
	// 	}

	// }
}