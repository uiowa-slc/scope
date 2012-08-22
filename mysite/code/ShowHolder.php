<?php
class ShowHolder extends Page {
  static $db = array(
   );
  static $has_one = array(
   );
  static $allowed_children = array('Show');

   


 
}
 
class ShowHolder_Controller extends Page_Controller {
	/*
  public function PaginatedPages() {
    $pages = new PaginatedList(Show::get(), $this->request);
    $pages->setPageLength(3);
    return $pages;
  }
  */
}