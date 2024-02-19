<!DOCTYPE html>
<html lang="it" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    <title>Reset Password</title>
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
    <div class="logo">
        <img src="https://www.twentyfive25.it/wp-content/uploads/2023/03/Logo-25-Twentyfive-Top-Nav-Bar.webp" alt="Logo" style="display: flex; margin: 0px 120px; padding: 15px">
    </div>
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
        <a style="color: white" href="https://www.facebook.com/twentyfivesrls" target="_blank" class="link"><i class="fa fa-facebook-official" aria-hidden="true"></i></a>
        <a href="https://www.facebook.com/twentyfivesrls" aria-label="Facebook" target="_blank" rel="noopener noreferrer" style="--color: #1B64F6; --background-color: transparent;" class="ast-builder-social-element ast-inline-flex ast-behance footer-social-item"><span class="ahfb-svg-iconset ast-inline-flex svg-baseline"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg></span></a>
        <a href="https://www.linkedin.com/company/92819098/admin/feed/posts/" aria-label="Linkedin" target="_blank" rel="noopener noreferrer" style="--color: #7acdee; --background-color: transparent;" class="ast-builder-social-element ast-inline-flex ast-twitter footer-social-item"><span class="ahfb-svg-iconset ast-inline-flex svg-baseline"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M416 32H31.9C14.3 32 0 46.5 0 64.3v383.4C0 465.5 14.3 480 31.9 480H416c17.6 0 32-14.5 32-32.3V64.3c0-17.8-14.4-32.3-32-32.3zM135.4 416H69V202.2h66.5V416zm-33.2-243c-21.3 0-38.5-17.3-38.5-38.5S80.9 96 102.2 96c21.2 0 38.5 17.3 38.5 38.5 0 21.3-17.2 38.5-38.5 38.5zm282.1 243h-66.4V312c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9V416h-66.4V202.2h63.7v29.2h.9c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9V416z" fill="white"></path>
</svg></span></a>
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
