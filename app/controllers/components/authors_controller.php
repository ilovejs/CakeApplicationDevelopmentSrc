<?php
class AuthorsController extends AppController{
    var $name = 'Authors';

    function index() {
        $this->Author->recursive = 1;
        $authors = $this->Author->find('all');
        $this->set('authors', $authors);
    }

}