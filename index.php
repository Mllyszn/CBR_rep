<?php
include "backend/core/connect_db.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="assets/css/homepage.css" />
  <title>CBR Homepage</title>
</head>

<body>
  <div class="intro">
    <h1>Welcome to the CBR Test</h1>
  </div>

  <div class="btn">
    <a href="assets/core/question.php">
      <p>Take the test</p>
    </a>
  </div>
  <?php
  include "assets/core/validation.php";
  ?>
</body>

</html>

<?php
include "backend/core/footer.php";
?>