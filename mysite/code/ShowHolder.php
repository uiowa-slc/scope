<?php
use SilverStripe\Control\Controller;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;

class ShowHolder extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

	private static $allowed_children = array('Show');

	public function Years() {

		$shows = Show::get();
		$years = new ArrayList();

		foreach ($shows as $show) {
			$showYear = $show->obj('Date')->Format('y');

			if (!$years->filter(array('Year' => $showYear))->First()) {

				$params = Controller::curr()->getURLParams();
				if (isset($params['year'])) {
					if ($params['year'] == $showYear) {
						$active = true;
					} else {
						$active = false;
					}
				} else {
					$active = false;
				}

				$year = new ArrayData(array(
					'Year' => $showYear,
					'Link' => Controller::join_links($this->Link('year'), $showYear),
					'Active' => $active,
				));
				$years->push($year);
			}

		}

		return $years;

	}

}