<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <title>Reset Password</title>
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(#0E0026, #390099);
        }
        .container-email {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient( #0E0026 100%, #390099);
        }
        .card-email{
            background-color: #fff;
            padding: 10px;
            margin: 50px 0px 50px;
            text-align: center;
        }
        h2 {
            color: #333;
            font-size: 32px;
        }
        p {
            color: #666;
            font-size: 16px;
            text-align: start;
        }
        .link {
            color: #ffffff !important;
        }
        .logo {
            max-width: 100px;
            margin-bottom: 20px;
        }
        @media screen and (max-width: 600px){

        }
    </style>
</head>
<body>
<div class="container-email">
    <div class="card-email">
    <h2>Recupero Password</h2>
    <p>Hai richiesto il ripristino per la password del tuo account${realmName}. Per procedere con il recupero della password, clicca sul link di seguito</p>
    <p>Clicca sul seguente link per reimpostare la tua password:</p>
        <a href="${link}">${link}</a>
        <div>
        <p>Grazie,</p>
        <p style="font-style: italic">Paybolt</p>
        </div>
    <hr>
        <p>NB.Se non hai richiesto il recupero della password, ti preghiamo di ignorare questa mail.
        In caso di problemi o dubbi, puoi contattarci immediatamente al nostro servizio clienti.</p>
</div>
    <!-- Icone social -->
    <div style="margin-top: 20px;">
        <a href="https://www.facebook.com/twentyfive25" target="_blank" class="link"><i class="fab fa-facebook-f"></i></a>
        <a href="https://www.instagram.com/twentyfive25" target="_blank" class="link"><i class="fab fa-instagram"></i></a>
        <a href="https://www.linkedin.com/company/twentyfive25" target="_blank" class="link"><i class="fab fa-linkedin-in"></i></a>
    </div>
    <!-- Link Twentyfive -->
    <div style="display: inline-grid; margin:0px 40% 30px 45%; text-align: center">
    <a style="color: #666666" href="https://paybolt.it/">https://paybolt.it/</a>
    <span><a href="https://www.twentyfive25.it/" class="link"> Twentyfive</a></span>
    <span><a href="https://www.twentyfive25.it/" class="link">Academy</a></span>
    </div>
</div>
</body>
</html>
