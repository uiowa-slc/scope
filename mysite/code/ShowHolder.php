<?php
class ShowHolder extends Page {
  private static $db = array(
   );
  private static $has_one = array(
   );
  private static $allowed_children = array('Show');

  


  
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