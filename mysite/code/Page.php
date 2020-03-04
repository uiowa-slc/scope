<?php

use SilverStripe\View\SSViewer;
use SilverStripe\View\ArrayData;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Blog\Model\Blog;

class Page extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(
	);

	public function BlogPosts(){

		$blog = Blog::get()->First();

		return $blog->getBlogPosts();

	}
	public function LatestIssue() {
		$latestIssue = Issue::get()->sort(
			array('Volume' => 'DESC', 'Number' => 'DESC')
		)->First();
		return $latestIssue;
	}


}
