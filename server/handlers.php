<?php

$answer = $_POST['answer'];
$correctAnswer = $_POST['answerCorrect'];

if ($correctAnswer == $answer) {
    header("Location:" . $_SERVER['HTTP_REFERER'] . "?correct=true");
} else {
    header("Location:" . $_SERVER['HTTP_REFERER'] . "?correct=false");
}


