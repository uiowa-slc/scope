<?php

class CfoProjectMigrationTask extends BuildTask {

	protected $title = 'Fix photo and position fields';
	protected $description = 'the position fields need to be updated to what title holds AND change PhotoID to hold what ProfilePicID is holding';

	protected $enabled = true;

	function run($request) {

		$staff = StaffPage::get();

		echo "<h2> Setting position fields to what title holds";
		$this->titleToPosition($staff);

		echo "<h2> Setting PhotoID field to what ProfilePicID holds";
		$this->setPhoto($staff);

	}

	function titleToPosition($objectList) {
		foreach ($objectList as $object) {
			echo "<li>Working on staff member: " . $object->FirstName;
			$object->Position = $object->Title;
			$object->write();
			if ($object->isPublished()) {
				echo "<strong>AND publishing</strong>";
				$object->doPublish();
				$object->writeToStage("Live");
			}
			echo "</li>";
		}

	}

	function setPhoto($objectList) {
		foreach ($objectList as $object) {
			echo "<li>Working on staff member: " . $object->FirstName;
			$object->PhotoID = $object->ProfilePicID;
			$object->write();
			if ($object->isPublished()) {
				echo "<strong>AND publishing</strong>";
				$object->doPublish();
				$object->writeToStage("Live");
			}
			echo "</li>";
		}

	}
}

// In the CfoProjectMigrationTask, get all StaffPage objects, loop through all of them and set the "Position" 
// field to what's currently in the "Title" field, write(), then doPublish()

// In the CfoProjectMigrationTask, get all StaffPage objects, loop through all of them and set the "PhotoID" 
// field to what's currently in the "ProfilePicID" field, write(), then doPublish()