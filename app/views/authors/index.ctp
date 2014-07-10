<?php foreach($items as $item): ?>
    <h2><?php echo $item['Profile']['username']?></h2>
    <p>
        <?php echo $item['Profile']['email']?><br>
        <?php echo $item['Profile']['bio']?><br>
        <?php echo $item['Profile']['author_id']?>
    </p>
    <hr />
    <h3>Book(s):</h3>
    <ul>
        <?php foreach($item['Book'] as $book): ?>
            <li><?php echo $book['title'] ?></li>
        <?php endforeach; ?>
    </ul>
<?php endforeach; ?>