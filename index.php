<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trivial | Nivel 1</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="stylesheet" href="./styles/normalize.css">
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center h-100">
        <div class="card bg-opacity">
            <div class="card-body text-center">
                <h2 class="text-center">Trivial Coches</h2>
                <div>
                    <?php
                    include('./server/questions.php');
                    $selectedQuestion = $resultArray[array_rand($resultArray)];
                    ?>
                    <p class="question">Pregunta</p>
                    <p class="show-question">
                        <?php
                        echo $selectedQuestion['pregunta'];
                        ?>
                    </p>
                </div>
                <p class="answer">Introduce tu respuesta</p>
                <form action="./server/handlers.php" method="post">
                    <input type="text" name="answer" id="answer" class="form-control p-0">
                    <input type="hidden" name="answerCorrect" value="<?php echo $selectedQuestion['respuesta']?>">
                    <input class="btn btn-primary" type="submit" value="Enviar respuesta">
                </form>
            </div>
        </div>
    </div>
</body>

</html>