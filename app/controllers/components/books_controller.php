<?php
/*
 * Book Table has author_id
 * Funny thing is even though none foreign key relation has been step up. All the code there is working. !!
 */
class BooksController extends AppController {
	var $name = 'Books';
	var $scaffold;
    var $helpers = array('Form');

    function index() {
        $this->Book->recursive = 1;
        $books = $this->Book->find('all',
            array('fields' => array('Book.isbn','Book.title','Author.name')
            )
        );
        $this->set('books', $books);
    }

    function add() {
        if (!empty($this->data)) {
            $this->Book->create();
            //TODO: this function will return an array
            /**
             * Array
            (
                [Book] => Array
                (
                [isbn] => 79
                [title] => 798
                [description] => 79
                [author_id] => 1
                )
            )
             */
            $this->Book->save($this->data);
            $this->redirect(array('action'=>'index'));
        }

        /* GenerateList() is an old function
         * $authors = $this->Book->Author->generateList();
         */
        $authors = $this->Book->Author->find('list');

        $this->set('authors', $authors);
    }
}