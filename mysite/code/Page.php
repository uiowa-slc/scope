<?php

use SilverStripe\CMS\Model\SiteTree;

class Page extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(

	);

	public function NextPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->owner->ParentID,
			'Sort:GreaterThan' => $this->owner->Sort,
		))->First();
		return $page;
	}

	public function PreviousPage() {
		$page = Page::get()->filter(array(
			'ParentID' => $this->owner->ParentID,
			'Sort:LessThan' => $this->owner->Sort,
		))->Last();
		return $page;
	}

}
