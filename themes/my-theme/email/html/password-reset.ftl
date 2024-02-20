<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Reset Password</title>
    <style>
        /* Stili CSS inline */
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(#0E0026 100%, #390099);
            font-family: 'Montserrat', sans-serif;
            color: #666;
        }

        .container-email {
            padding: 20px;
            background-color: #fff;
            margin: 50px auto;
            max-width: 600px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .logo img {
            max-width: 300px;
            height: auto;
            margin-bottom: 20px;
        }

        .card-email {
            padding: 20px;
        }

        h2 {
            color: #333;
            font-size: 32px;
            margin-bottom: 20px;
        }

        .social-icons a {
            margin-right: 10px;
            color: white;
            font-size: 24px;
        }

        .center-links {
            text-align: center;
            margin-top: 20px;
        }

        .link-container a {
            display: block;
            margin-bottom: 10px;
            color: #666666;
        }
    </style>
</head>
<body>
<div class="container-email">
    <div class="logo">
        <img src="https://www.twentyfive25.it/wp-content/uploads/2023/03/Logo-25-Twentyfive-Top-Nav-Bar.webp" alt="Logo">
    </div>
    <div class="card-email">
        <h2>Recupero Password</h2>
        <p>Gentile ${user.getFirstName()} ${user.getLastName()},</p>
        <p>Hai richiesto il ripristino per la password del tuo account. Per procedere con il recupero della password, <br> clicca sul link di seguito:</p>
        <p><a href="${link}" style="color: #1A1660; text-decoration: none;">Clicca qui per reimpostare la tua password</a></p>
        <p>Attenzione, questo link è valido solo per 5 minuti.</p>
        <p style="font-style: italic;">Grazie,<br> Paybolt</p>
        <hr>
        <p>NB. Se non hai richiesto il recupero della password, ti preghiamo di ignorare questa mail. In caso di problemi o dubbi, puoi contattarci immediatamente al nostro servizio clienti.</p>
    </div>
    <!-- Icone social -->
    <div class="social-icons">
        <a href="https://www.facebook.com/twentyfivesrls" target="_blank"><i class="fa fa-facebook-official" aria-hidden="true"></i></a>
        <a href="https://www.facebook.com/twentyfivesrls" target="_blank"><i class="fa fa-instagram"></i></a>
        <a href="https://www.linkedin.com/company/twentyfive25" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
    </div>

    <!-- Link Twentyfive -->
    <div class="center-links">
        <div class="link-container">
            <a href="https://paybolt.it/">https://paybolt.it/</a>
            <a href="https://www.twentyfive25.it/">Twentyfive</a>
            <a href="https://www.twentyfive25.it/">Academy</a>
        </div>
    </div>
</div>
</body>
</html>
