<?php echo $form->create('Author');?>
<fieldset>
    <legend>Add New Author</legend>
    <?php
    echo $form->input('name');
    echo $form->input('Profile.username');
    echo $form->input('Profile.email');
    echo $form->input('Profile.website');
    echo $form->input('Profile.bio');
    ?>
</fieldset>
<?php echo $form->end('Submit');?>
