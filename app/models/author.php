<?php
class Author extends AppModel {
    var $name = 'Author';

    var $hasAndBelongsToMany = 'Book';



}