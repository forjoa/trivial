<?php

$answer = $_POST['answer'];
$correctAnswer = $_POST['answerCorrect'];

var_dump($correctAnswer);
var_dump($answer);

if ($correctAnswer == $answer) {
    header ('Location: ../index.php?correct=true');
} else {
    header ('Location: ../index.php?correct=false');
}