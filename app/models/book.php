<?php 
class Book extends AppModel {
	var $name = 'Book';

    var $hasAndBelongsTo = 'Author';



}