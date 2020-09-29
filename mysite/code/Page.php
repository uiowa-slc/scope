<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Control\Director;

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

	public function urlsToCache() {
		$disallowedClasses = array(
			'SilverStripe\CMS\Model\RedirectorPage',
			'SilverStripe\UserForms\Model\UserDefinedForm',
		);

		if ($this->ClassName == 'Show') {
			if ($this->IsPast()) {
				return [];
			}
		}

		if (!array_search($this->ClassName, $disallowedClasses)) {
			return [Director::absoluteURL($this->getOwner()->Link()) => 0];
		} else {
			return [];
		}

	}
}
