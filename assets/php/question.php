<!DOCTYPE html>

<HEAD>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question</title>
</HEAD>

<BODY>
    <?php
    echo "Vraag";
    ?>
    <br>
    <?php
    $number = rand(10, 100);

    echo "<span style=\"background-image:url(\"images/yellowcircle.png\")><?php echo $number; ?> </span>";
    echo "<span style=\"background-image:url(\"images/yellowcircle.png\")><?php echo $number; ?> </span>";

    echo "<BUTTON TYPE=\'button\"  onClick=\"history.go(0)\" >Refresh</BUTTON>";
    ?>
</BODY>

</html>