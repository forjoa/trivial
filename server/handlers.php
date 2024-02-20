<?php

$answer = $_POST['answer'];
$correctAnswer = $_POST['answerCorrect'];

if (strtolower($correctAnswer) == strtolower($answer)) {
    header("Location:" . explode('?', $_SERVER['HTTP_REFERER'])[0] . "?correct=true");
} else {
    header("Location:" . explode('?', $_SERVER['HTTP_REFERER'])[0]  . "?correct=false");
}


