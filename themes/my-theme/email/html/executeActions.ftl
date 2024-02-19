<#--
<#outputformat "plainText">
    <#assign requiredActionsText><#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#sep></#items></#list></#if></#assign>
</#outputformat>

<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">

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

    </style>
</head>
<body>
<div class="card-email">
    <p>Spiacenti, questa azione è scaduta</p>
    <a style="color: #1A1660" href="${url.loginUrl}" id="create-account-link">Torna al login</a></div>
</body>
</html>-->
