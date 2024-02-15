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
            background: linear-gradient(#2317E6, #390099);
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
    <#--<img src="${url.
    resourcesPath}/img/Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" rel="icon" class="logo">-->
    <h2>Recupero Password</h2>
    <p>Hai richiesto il ripristino per la password del tuo account${realmName}. Per procedere con il recupero della password, clicca sul link di seguito</p>
    <p>Clicca sul seguente link per reimpostare la tua password:
        <a href="${link}" class="link">${link}</a></p>
</div>
</body>
</html>
