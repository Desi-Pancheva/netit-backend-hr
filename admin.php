<?php
    include './external_autoload.php';
    (new controllers\AdminController())->index();
?>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Monster HR</title>
        <link rel="stylesheet" href="style/style.css">
        <link rel="stylesheet" href="style/admin.css">
    </head>
    <body>
        
        <div id="admin-header">
            <h1 class="logo">Admin Monster HR</h1>
            
            <div id="admin-header-placeholder">
                <ul>
                    <li>Add new addv</li>
                    <li>List addv </li>
                    <li><a href="admin.php?action=logout">Log out</a></li>
                </ul>
            </div>
        </div>
        
          <?php 
            
            if(\session\Session::checkFlashMessage('create_job_add')) {
                
                echo '<div class="message success">';
                echo \session\Session::getFlashMessage('create_job_add');
                echo '</div>';                
            }
        ?> 
        
        <div id="admin-editor">
            <form method="POST" name="admin-post-editor">
                <input class="form-input" type="text" placeholder="Post title" name="post_title">
                <input class="form-input" type="text" placeholder="Preview content" name="preview_content">
                <textarea placeholder="Post content" name="post_content"></textarea>
                <input class="button" type="submit" name="post_submit">
                <input type="hidden" name="post_tokken" value="1">
                <img src="imagesMonster/board.jpg" width="500px" height="300px"/>
            </form>
        </div>
        
              
    </body>
</html>

