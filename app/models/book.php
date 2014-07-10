<?php 
class Book extends AppModel {
	var $name = 'Book';

    var $hasAndBelongsToMany = 'Author';



}