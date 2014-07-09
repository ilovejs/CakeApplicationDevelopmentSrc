<?php echo $form->create('Book');?>
    <fieldset>
        <legend>Add New Book</legend>
        <?php
        echo $form->input('isbn');
        echo $form->input('title');
        echo $form->input('description');
        echo $form->input('author_id');
        ?>
    </fieldset>
<?php echo $form->end('Submit');?>