<#assign yourConditionToDetectMobile = true> <!-- o qualsiasi altra logica necessaria per rilevare mobile o desktop -->

<#assign isMobile = false>
<#if yourConditionToDetectMobile>
    <#assign isMobile = true>
</#if>
<#import "template.ftl" as layout>
<script>
    function togglePassword() {
        var x = document.getElementById("password");
        var v = document.getElementById("vi");
        if (x.type === "password") {
            x.type = "text";
            v.src = "${url.resourcesPath}/img/eye.png";
        } else {
            x.type = "password";
            v.src = "${url.resourcesPath}/img/eye-off.png";
        }
    }
</script>

<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password; section>
    <#if section = "title">
        ${msg("loginTitle", (realm.displayName!''))}
    <#elseif section = "header">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
    <#elseif section = "form">
        <div class="login-container">
        <div class="logo">
        <img src="${url.
        resourcesPath}/img/Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" rel="icon">
        </div>
        <#if realm.password>
                <form id="kc-form-login" class="form-container" onsubmit="return true;" action="${url.loginAction}" method="post">
                    <h2>Login</h2>
                        <label class="label-login" for="email">Email</label>
                    <input class="input-login" type="text" id="username" placeholder="${msg("Email")}" name="username" tabindex="1"autofocus autocomplete="off"
                           aria-invalid="<#if messagesPerField.existsError('username', 'password')>true</#if>">
                    <#if messagesPerField.existsError('username','password')>
                        <span id="input-error" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                    </#if>
                    <label class="label-login" for="password" >${msg("password")}</label>
                    <div style="display: flex">
                        <input type="password" id="password" class="input-login" placeholder="${msg("Password")}" name="password" autocomplete="new-password"
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>">

                        <label class="visibility" id="v" onclick="togglePassword()">
                            <img id="vi" src="${url.resourcesPath}/img/eye-off.png"></label>
                    </div>
                    <#if messagesPerField.existsError('username','password')>
                        <span id="input-error" class="invalid-input" aria-live="polite">
                            </span>
                    </#if>

                        <div class="forgot-password">
                            <#if realm.resetPasswordAllowed>
                                <p>
                                    <a href="${url.loginResetCredentialsUrl}" id="forgot-password-link">Hai dimenticato la password?</a>
                                </p>
                            </#if>
                        </div>
                        <button type="submit" class="button-login">Accedi</button>
                    <p class="create-account">
                    <div id="kc-registration" style="display: inline-grid">
                        Devi ancora registrarti? <a style="color: #1A1660" href="${url.registrationUrl}" id="create-account-link">Crea un account</a>
                    </div>
                    </p>
                    <!-- Card per i social buttons -->
                    <div class="card-social" >
                        <div class="social-providers">
                            <#if social.providers??>
                                <p class="text-center">Oppure accedi con:</p>
                                <#list social.providers as p>
                                    <#if p.alias == "google">
                                        <#if p.loginUrl??>
                                            <button id="google-login-button" class="social-button" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}" style="background-color: white; border: 2px solid black;">
                                                        <img src="${url.
                                                        resourcesPath}/img/Google__G__logo 1.svg" alt="Google Icon" width="25" height="25">
                                                <span>Accedi con Google</span>
                                            </button>
                                        </#if>
                                    </#if>
                                    <#if p.alias == "facebook">
                                        <#if p.loginUrl??>
                                            <button id="facebook-login-button" class="social-button" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}" style="background-color: #3C5899;">
                                                        <img src="${url.
                                                        resourcesPath}/img/2023_Facebook_icon 1.svg" alt="Facebook Icon" width="25" height="25">
                                                        <span>Accedi con Facebook</span>
                                            </button>
                                    </#if>
                                </#if>
                              </#list>
                            </#if>
                        </div>
                    </div>
                </form>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>