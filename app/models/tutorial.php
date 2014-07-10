<?php
class Tutorial extends AppModel {
    var $name = 'Tutorial';

    //if there is none relation defined below, scaffold view will be different
    var $belongsTo = array(
        'Author' => array(
            'className' => 'Author'
        )
    );
}
 