<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Reset Password</title>
    <style>
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
            font-family: 'Montserrat', sans-serif;

        }
        p {
            color: #666;
            font-size: 16px;
            text-align: start;
            font-family: 'Montserrat', sans-serif;
        }
        .link {
            color: #ffffff !important;
        }

        .logo {
            max-width: 100px;
            margin-bottom: 20px;
        }
        .center-links {
            text-align: center;
        }

        .center-links .link-container {
            display: inline-block;
            margin: 0 auto;
        }

        .center-links .link-container a {
            display: block;
            margin-bottom: 10px;
            color: #666666;
        }
        .social-icons {
            text-align: center;
            margin-bottom: 20px;
        }

        .social-icons a {
            margin-right: 10px;
            color: white;
        }

        @media screen and (max-width: 600px){

        }

    </style>
</head>
<body>
<div class="container-email">
    <img src="data:image/png;base64,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" alt="Base64 Image" class="logo">
    <div class="card-email">
    <h2>Recupero Password</h2>
        <p>Gentile ${user.getFirstName()} ${user.getLastName()},</p>
    <p>Hai richiesto il ripristino per la password del tuo account. Per procedere con il recupero della password, <br> clicca sul link di seguito</p>
    <p>Clicca sul seguente link per reimpostare la tua password: <a href="${link}" style="font-family: 'Montserrat', sans-serif; color: #1A1660">Clicca qui</a>
    </p>
        <p>Attenzione, questo link è valido solo per 5 minuti. </p>
        <div>
        <p style="font-style: italic; display: inline-block">Grazie,<br> Paybolt</p>
        </div>
    <hr>
        <p>NB. Se non hai richiesto il recupero della password, ti preghiamo di ignorare questa mail.
        In caso di problemi o dubbi, puoi contattarci immediatamente al nostro servizio clienti.</p>
</div>
    <!-- Icone social -->
    <div class="social-icons">
        <a style="color: white" href="https://www.facebook.com/twentyfivesrls" target="_blank" class="link"><i class="fa-brands fa-facebook"></i></a>
        <a href="https://www.instagram.com/twentyfive25.it" target="_blank" class="link"><i class="fa-brands fa-instagram"></i></a>
        <a href="https://www.linkedin.com/company/twentyfive25" target="_blank" class="link"><i class="fa-brands fa-linkedin-in"></i></a>
    </div>
    <!-- Link Twentyfive -->
    <div class="center-links">
        <div class="link-container">
            <a href="https://paybolt.it/">https://paybolt.it/</a>
            <a href="https://www.twentyfive25.it/" class="link">Twentyfive</a>
            <a href="https://www.twentyfive25.it/" class="link">Academy</a>
        </div>
    </div>
</div>
</body>
</html>
