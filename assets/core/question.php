<?php include "../../backend/core/header.php";




?>

<!DOCTYPE html>

<HEAD>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/question.css">
    <title>Question</title>
</HEAD>

<BODY>
    <div class="question">
        <div class="quote">
            <?= $questions;
            ?>
        </div>
        <br>
        <div class="image">
            <img src="../../public/assets/img/<?=$photo?> "
                alt="" width="500">
        </div>
        <?php
        echo "<BUTTON TYPE=\'button\"  onClick=\"history.go(0)\" >Refresh</BUTTON>";
        echo "<BUTTON TYPE=\'button\"  onClick=\"history.go(0)\" >Refresh</BUTTON>";
        
        
        
    
    foreach ($answersArray as $answerString) {
        list($answer, $true_false) = explode('_', $answerString);
        ?><button><?=$answer?></button><?php
        
    }

?>
       
    </div>

    <?php
    include_once("../core/klok.html")
    ?>

</BODY>

</html>