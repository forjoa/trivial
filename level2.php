<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trivial | Nivel 2</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="stylesheet" href="./styles/normalize.css">
    <script src="./scripts/index3.js"></script>
    <style>
        #lifes {
            color: white;
            display: block;
            margin: auto;
            background-color: transparent;
            padding: 20px;
            backdrop-filter: blur(24px);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            margin-top: 150px;
            margin-bottom: 20px;
            max-width: 500px;
            width: 50%;
        }

        #lifes div {
            display: flex;
            justify-content: space-between;
        }

        #lifes div div {
            display: flex;
            gap: 2px;
        }
        #home{
            color: white;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div id="lifes">
        <div>
            <div>
                <a href="home.html" id="home">Home 🏠</a>
            </div>
            <div>
                <span>Te quedan</span>
                <p>5</p><span>vidas ❤️</span>
            </div>
        </div>
    </div>
    <div class="container d-flex justify-content-center align-items-center h-100">
        <div class="card bg-opacity">
            <div class="card-body text-center">
                <h2 class="text-center">Trivial Coches Nivel 2 </h2>
                <div>
                    <?php
                    include('./server/questions.php');
                    $selectedQuestion = $resultArray[array_rand($resultArray)];
                    ?>
                    <p class="question">Pregunta:</p>
                    <p class="show-question">
                        <?php
                        echo $selectedQuestion['pregunta'];
                        ?>
                    </p>
                    <p class="show-help">
                        <?php
                        echo "La respuesta contiene " . $selectedQuestion['ayuda'] . " palabras";
                        ?>
                    </p>
                </div>
                <p class="answer">Introduce tu respuesta:</p>
                <form action="./server/handlers.php" method="post">
                    <input type="text" name="answer" id="answer" class="form-control p-0">
                    <input type="hidden" name="answerCorrect" value="<?php echo $selectedQuestion['respuesta'] ?>">
                    <input class="btn btn-primary" type="submit" value="Enviar respuesta">
                </form>
                <?php
                if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['correct'])) {
                    $correct = $_GET['correct'];
                    $ca = $_GET['c_a'];
                    echo ($correct === 'true') ? '
                    <p class="result correct">Respuesta correcta ✅
                    </p><script>normalLife("./index.php")</script>' : '<p class="result incorrect">Respuesta incorrecta ❌</p><p>La respuesta correcta era: '.$ca.'</p><script>lessLifes("./index.php")</script>';
                }
                ?>
            </div>
        </div>
    </div>
</body>

</html>