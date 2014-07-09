<?php 
class Book extends AppModel {
	var $name = 'Book';
    var $belongsTo = array(
      'Author' => array(
          'className' => 'Author'
      )
    );
    //have been suppressed
//    var $scaffold;

}