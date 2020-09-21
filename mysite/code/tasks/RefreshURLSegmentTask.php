<?php

use SilverStripe\Dev\BuildTask;

class RefreshURLSegmentTask extends BuildTask {

	protected $title       = 'Refresh contributor URL segments';
	protected $description = 'Reload and update all URL segments';

	protected $enabled = true;

	function run($request) {
		$contributors = Contributor::get();

		foreach ($contributors as $contributor) {
			$contributor->write();
			echo "wrote ".$contributor->Name.".<br />";
		}
	}

}