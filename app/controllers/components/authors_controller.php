<?php
class AuthorsController extends AppController{
    var $name = 'Authors';
    var $helpers = array('Form');

    function index() {
        $this->Author->recursive = 2;
        $items = $this->Author->find('all');
        //pr($items);
        $this->set('items', $items);
    }

    function add() {
        if (!empty($this->data)) {
            $this->Author->create();
            $this->Author->saveAll($this->data);
            $this->redirect(array('action'=>'index'), null, true);
        }

//        $authors = $this->Author->find('list');
//        $this->set('authors', $authors);
    }


}