<?php

namespace {
	use SilverStripe\CMS\Controllers\ContentController;
	use SilverStripe\ORM\PaginatedList;

	class PageController extends ContentController {
		/**
		 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
		 * permissions or conditions required to allow the user to access it.
		 *
		 * <code>
		 * [
		 *     'action', // anyone can access this action
		 *     'action' => true, // same as above
		 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
		 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
		 * ];
		 * </code>
		 *
		 * @var array
		 */
		private static $allowed_actions = [];

		protected function init() {
			parent::init();
			// You can include any CSS or JS required by your project here.
			// See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
		}
		public function Breadcrumbs($maxDepth = 20, $unlinked = false, $stopAtPageType = false, $showHidden = false) {
			return parent::Breadcrumbs(20, false, false, true);
		}

		public function BlogPosts() {
			$blog = Blog::get()->First();
			return $blog->getBlogPosts();
		}

		public function UpcomingShows() {
			$now = date("Y-m-d", time() - 86400);

			$shows = Show::get()->filter(array(
				'Date:GreaterThan' => $now,
			))->sort('Date ASC');

			$paginatedShows = new PaginatedList($shows, $this->getRequest());
			$paginatedShows->setPageLength(10);

			return $shows;

		}

		public function PreviousShows() {
			//TODO: Make sure we only get previous shows
			$now = date('Y-m-d');
			$shows = Show::get()->filter(array(
				'Date:LessThan' => $now,
			))->sort('Date DESC');

			return $shows;
		}

		public function paginatedPreviousShows() {
			$curDate = date("Y-m-d");
			$previousShows = $this->PreviousShows();
			$paginatedItems = new PaginatedList($previousShows, $this->getRequest());
			$paginatedItems->setPageLength(10);

			return $paginatedItems;
		}

		public function getShows($number = 5) {
			$shows = Show::get()->sort("Date DESC")->limit($number);
			return $shows;
		}
	}
}
