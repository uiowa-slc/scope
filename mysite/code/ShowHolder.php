<?php
use SilverStripe\Control\Controller;
use SilverStripe\Forms\GridField\GridFieldDataColumns;
use SilverStripe\Lumberjack\Model\Lumberjack;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;

class ShowHolder extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

	private static $extensions = [
		Lumberjack::class,
	];

	private static $icon_class = 'font-icon-calendar';

	private static $allowed_children = array('Show');

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$grid = $fields->dataFieldByName('ChildPages');
		$config = $grid->getConfig();
		$dataColumns = $config->getComponentByType(GridFieldDataColumns::class);

		$dataColumns->setDisplayFields([
			'Title' => 'Title',
			'Created' => 'Created',
		]);

		$list = $grid->getList();

		$sortedList = $list->sort('Created DESC');

		$grid->setList($sortedList);
		$grid->setTitle('Shows');
		$grid->setName('Shows');

		$fields->addFieldToTab('Root.Main', $grid);

		$fields->removeByName("ChildPages");
		$fields->removeByName("Content");

		return $fields;
	}

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
					'Shows' => $this->PreviousShows()->filter(array('Date:PartialMatch' => $showYear))->sort('Date DESC')
				));
				$years->push($year);
			}

		}

		return $years;

	}
	public function PreviousShows() {
		$curDate = date("Y-m-d");
		$shows = Show::get()->filter(array('Date:LessThan' => $curDate, 'Cancelled' => 0))->sort('Date DESC');
		return $shows;
	}
}