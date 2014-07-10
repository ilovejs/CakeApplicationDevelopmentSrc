<?php
class AuthorsController extends AppController{
    var $name = 'Authors';
    var $scaffold;

    function index(){
        //some fun here
        $this->Author->recursive = 1;
        $authors = $this->Author->find('all');
        //print_r($authors);
        $this->set('authors',$authors);
    }


}