<table>
    <thead>
        <th>ISBN</th>
        <th>Title</th>
        <th>Author</th>
    </thead>
    <?php foreach($books as $book): ?>
        <tr>
            <td><?php echo $book['Book']['isbn'] ?></td>
            <td><?php echo $book['Book']['title'] ?></td>
            <td><?php echo $book['Author']['name'] ?></td>
        </tr>
    <?php endforeach; ?>
</table>