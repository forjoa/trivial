<?php

$answer = $_POST['answer'];
$correctAnswer = $_POST['answerCorrect'];

if ($correctAnswer == $answer) {
    header ('Location: ../index.php?correct=true');
} else {
    header ('Location: ../index.php?correct=false');
}