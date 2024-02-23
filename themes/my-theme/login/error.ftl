<#import "template.ftl" as layout>
<script>
    function redirectToLogin() {
        var loginPageUrl = "${url.loginUrl}";
        window.location.href = loginPageUrl;
    }
    document.addEventListener("DOMContentLoaded", function() {
        var backButton = document.querySelector(".button-expired-link");
        if (backButton) {
            backButton.addEventListener("click", function() {
                redirectToLogin();
            });
        }
    });
</script>

<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
    <#elseif section = "form">
        <div id="kc-error-message">
            <img src="${url.
            resourcesPath}/img/Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" class="logo-expired-link">
            <div class="card-expired-link">
                <div class="form-expired-link">
                    <img src="${url.
                    resourcesPath}/img/milk.svg" alt="milk" class="img-expired-link">
                    <h2 class="h2-expired-link">Questo link è scaduto</h2>
                    <p class="p-expired-link">Ritorna alla pagina di login per generarne un altro</p>
                    <button class="button-expired-link" onclick="redirectToLogin()">Torna al login</button>
                </div>
            </div>
            <#if skipLink??>
            <#else>
                <#if client?? && client.baseUrl?has_content>
                    <p><a id="backToApplication" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
                </#if>
            </#if>
        </div>
    </#if>
</@layout.registrationLayout>