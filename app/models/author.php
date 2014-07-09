<?php
class Author extends AppModel {
    var $name = 'Author';
    var $hasMany = array(
        'Book' => array(
            'className' => 'Book'
        )
    );
    //have been suppressed
    //var $scaffold;


}