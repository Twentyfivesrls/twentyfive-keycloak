<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        p {
            color: #666;
        }
        .link {
            color: #007bff;
            text-decoration: none;
        }
        .logo {
            max-width: 100px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fcreative-light-bulb-abstract-glowing-blue-background-generative-ai_188544-8090.jpg%3Fsize%3D626%26ext%3Djpg%26ga%3DGA1.1.1141335507.1707955200%26semt%3Dsph&tbnid=MlkqFU1Qovf26M&vet=12ahUKEwisl8TYxa2EAxUUVOUKHR5mAkEQMygFegQIARBi..i&imgrefurl=https%3A%2F%2Fit.freepik.com%2Ffoto-vettori-gratuito%2Fcolori&docid=sjxewrfV-76hlM&w=428&h=626&q=immagini&ved=2ahUKEwisl8TYxa2EAxUUVOUKHR5mAkEQMygFegQIARBi" width="120" height="44" class="logo">
    <h2>Reset Password</h2>
    <p>Hai richiesto il reset della tua password${realmName}. Utilizza il seguente link per reimpostare la tua password:</p>
    <p><a href="${link}" class="link">${link}</a></p>
    <p>Questo link scadrà tra ${linkExpirationFormatter(linkExpiration)}.</p>
</div>
</body>
</html>
