<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Reset Password</title>
    <style>
        .container-email {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(#0E0026 100%, #390099);

        }

        .card-email {
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

        .logo-email {
            padding-top: 1.5rem;
            display: flex;
            justify-content: center !important;
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
            display: flex;
            justify-content: space-between;
            padding: 0 42%;
            margin-bottom: 20px;
        }

        .social-icons a {

            color: white;
        }

        .social-icons {
            font-size: 24px;
        }

        .social-icons a {
            color: white;

        }

        @media screen and (max-width: 600px) {}
    </style>
</head>

<body>
<div class="container-email">
    <div class="logo-email" style="justify-content: center">
        <img src="https://www.twentyfive25.it/wp-content/uploads/2023/03/Logo-25-Twentyfive-Top-Nav-Bar.webp"
             width="220px" alt="Logo">
    </div>
    <div class="card-email">
        <h2>Recupero Password</h2>
        <p>Gentile ${user.getFirstName()} ${user.getLastName()},</p>
        <p>Hai richiesto il ripristino per la password del tuo account. Per procedere con il recupero della
            password, <br> clicca sul link di seguito</p>
        <p>Clicca sul seguente link per reimpostare la tua password:
            <a href="${link}" style="font-family: 'Montserrat', sans-serif; color: #1A1660">Clicca qui</a>
        </p>
        <p>Attenzione, questo link è valido solo per 5 minuti. </p>
        <div style="display: flex; align-items: center;">
            <p style="font-style: italic; align-items: center;">Grazie,<br> Paybolt</p>
        </div>
        <hr>
        <p>NB. Se non hai richiesto il recupero della password, ti preghiamo di ignorare questa mail.
            In caso di problemi o dubbi, puoi contattarci immediatamente al nostro servizio clienti.</p>
    </div>
    <!-- Icone social -->
    <div class="social-icons">
        <a style="color: white" href="https://www.facebook.com/twentyfivesrls" target="_blank" class="link"><i
                    class="fa fa-facebook" aria-hidden="true"></i></a>
        <a href="https://www.facebook.com/twentyfivesrls" target="_blank" class="link"><i
                    class="fa fa-instagram"></i></a>
        <a href="https://www.linkedin.com/company/twentyfive25" target="_blank" class="link"><i
                    class="fa fa-linkedin" aria-hidden="true"></i></a>
    </div>

    <!-- Link Twentyfive -->
    <div class="center-links">
        <div class="link-container">
            <a href="https://paybolt.it/">https://paybolt.it/</a>
            <a style="color: white" href="https://www.twentyfive25.it/" class="link">Twentyfive</a>
            <a style="color: white" href="https://www.twentyfive25.it/" class="link">Academy</a>
        </div>
    </div>
</div>
</body>

</html>