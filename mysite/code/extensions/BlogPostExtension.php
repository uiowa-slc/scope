<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\ArrayList;


class BlogPostExtension extends DataExtension {

    public function RelatedCategoryPosts() {
        $relatedPosts = ArrayList::create();

        foreach ($this->owner->Categories() as $category) {
            $relatedPosts->merge($category->BlogPosts());
        }

        $relatedPosts->removeDuplicates();
        $relatedPosts->remove($relatedPosts->byID($this->owner->ID));

        return $relatedPosts;
    }

    public function RelatedTagPosts() {
        $relatedPosts = ArrayList::create();

        foreach ($this->owner->Tags() as $tag) {
            $relatedPosts->merge($tag->BlogPosts());
        }

        $relatedPosts->removeDuplicates();
        $relatedPosts->remove($relatedPosts->byID($this->owner->ID));

        return $relatedPosts;
    }

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