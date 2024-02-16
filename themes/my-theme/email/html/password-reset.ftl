<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">

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
        .button-update-password {
            width: 50%;
            padding: 10px;
            background-color: #1A1660; /* Colore del pulsante (blu scuro) */
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            font-family: 'Montserrat', sans-serif;
        }
        .logo {
            max-width: 100px;
            margin-bottom: 20px;
        }
        @media screen and (max-width: 600px){

        }
    </style>
    <script>
        document.getElementById('redirectButton').addEventListener('click', function() {
            window.location.href = '${link}';
        });
    </script>
</head>
<body>
<div class="container-email">
    <img src="Logo%20-%2025%20-%20Twentyfive%20-%20Vari%20formati_Tavola%20disegno%201%20copia%208%201.svg" alt="Logo">
    <div class="card-email">
    <h2>Recupero Password</h2>
        <p>Gentile ${user.getFirstName()} ${user.getLastName()},</p>
    <p>Hai richiesto il ripristino per la password del tuo account. Per procedere con il recupero della password, <br> clicca sul link di seguito</p>
    <p>Clicca sul seguente link per reimpostare la tua password:</p>
        <button type="submit" class="button-update-password" id="redirectButton">Clicca qui</button>
        <div>
        <p style="font-style: italic; display: inline-block">Grazie,<br> Paybolt</p>
        </div>
    <hr>
        <p>NB. Se non hai richiesto il recupero della password, ti preghiamo di ignorare questa mail.
        In caso di problemi o dubbi, puoi contattarci immediatamente al nostro servizio clienti.</p>
</div>
    <!-- Icone social -->
    <div>
        <a href="https://www.facebook.com/twentyfivesrls" target="_blank" class="link"><i class="fab fa-facebook-f"></i></a>
        <a href="https://www.instagram.com/twentyfive25.it" target="_blank" class="link"><i class="fab fa-instagram"></i></a>
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
