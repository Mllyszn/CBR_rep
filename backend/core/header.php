<?php
include "connect_db.php";

$t = 0;

$sql_id = $con->prepare("SELECT DISTINCT GROUP_CONCAT(id) FROM exam;");
$sql_id->execute();
$sql_id->bind_result($id);
$sql_id->fetch();
$sql_id->close();
$idArray = explode(",", $id);



$sql_info=$con->prepare("SELECT 
exam.id, 
exam.questions, 
exam.type, 
exam.feedback, 
GROUP_CONCAT(CONCAT(answers.answer, '_', answers.true_false)) AS answers, 
img.photo, 
chapter.category 
FROM `exam`
INNER JOIN answers ON answers.Q_id = exam.id
INNER JOIN img ON img.Q_id = exam.id 
LEFT JOIN chapter ON chapter.id = exam.category_id

where exam.id = ?
GROUP BY 
exam.id, 
exam.questions, 
exam.type, 
exam.feedback, 
img.photo, 
chapter.category
;");
$sql_info->bind_param("i",$idArray[$t] );
$sql_info->execute();
$sql_info->bind_result($id, $questions, $type, $feedback, $answers, $photo, $category);
$sql_info->fetch();
$answersArray = explode(",", $answers);





?>
