<?php
class Author extends AppModel {
    var $name = 'Author';
    var $hasAndBelongsToMany = 'Book';
    /**
     * If use this clause:
     * var $hasOne = 'Profile';
     *
     * SQL Error: Unknown column 'Profile.author_id'
    */
    var $hasOne = 'Profile';


}