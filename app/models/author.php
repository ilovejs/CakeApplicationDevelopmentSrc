<?php
class Author extends AppModel {
    var $name = 'Author';
    //alternative method
    var $hasMany = array(
        'Book' => array(
            'className' => 'Book'
        ),
        'Tutorial' => array(
            'className' => 'Tutorial'
        )
    );


}