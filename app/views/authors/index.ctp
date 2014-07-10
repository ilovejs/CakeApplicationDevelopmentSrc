<?php foreach($authors as $author): ?>
    <h2><?php echo $author['Author']['name'] ?></h2>
    <hr />
    <h3>Book(s):</h3>
    <ul>
        <?php foreach($author['Book'] as $book): ?>
            <li><?php echo $book['title'] ?></li>
        <?php endforeach; ?>
    </ul>
<?php endforeach; ?>