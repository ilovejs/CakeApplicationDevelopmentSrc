<?php
/*
 * Book Table has author_id
 * Funny thing is even though none foreign key relation has been step up. All the code there is working. !!
 */
class BooksController extends AppController {
	var $name = 'Books';
    var $helpers = array('Form');

    function index() {
        $this->Book->recursive = 1;
        $books = $this->Book->find('all');
        //pr($books);
        $this->set('books', $books);
    }

    function add() {
        if (!empty($this->data)) {
            $this->Book->create();
            $this->Book->save($this->data);
            $this->redirect(array('action'=>'index'), null, true);
        }
//        $authors = $this->Book->Author->generateList();
        $authors = $this->Book->Author->find('list');
        $this->set('authors', $authors);
    }


}