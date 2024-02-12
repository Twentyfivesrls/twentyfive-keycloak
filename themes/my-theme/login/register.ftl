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

    function toggleConfirmPassword() {
        var confirmPasswordInput = document.getElementById("password-confirm");
        var visibilityIcon = document.getElementById("vi-confirm")
        if (confirmPasswordInput.type === "password"){
            confirmPasswordInput.type = "text";
            visibilityIcon.src = "${url.resourcesPath}/img/eye.png";
        } else {
            confirmPasswordInput.type = "password";
            visibilityIcon.src = "${url.resourcesPath}/img/eye-off.png";
        }
    }
</script>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm', 'phone'); section>
    <#if section = "header">
    <#elseif section = "form">
        <div class="body-container">
        <div class="register-container">
        <div class="register-logo">
            <img src="${url.
            resourcesPath}/img/Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" rel="icon">
        </div>
        <form id="kc-register-form" class="form-container" action="${url.registrationAction}" method="post">
            <h2 >Registrazione</h2>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                <div class="label-register">
                    <label for="firstName" class="${properties.kcLabelClass!}">${msg("Nome")}</label>
                </div>
                    <input type="text" id="firstName" placeholder="${msg("Nome")}" class="input-register" name="firstName" value="${(register.formData.firstName!'')}" aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>">
                <#if messagesPerField.existsError('firstName')>
                    <span id="input-error" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('firstName'))?no_esc}
                            </span>
                </#if>
                </div>


            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                <div class="label-register">
                    <label for="lastName" class="${properties.kcLabelClass!}">${msg("Cognome")}</label>
                </div>
                    <input type="text" id="lastName" class="input-register" placeholder="${msg("Cognome")}" name="lastName" value="${(register.formData.lastName!'')}" aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>">
                <#if messagesPerField.existsError('lastName')>
                    <span id="input-error" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('lastName'))?no_esc}
                            </span>
                </#if>

            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                <div class="label-register">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email*")}</label>
                </div>
                    <input type="text" id="email" class="input-register" placeholder="${msg("email")}" name="email" value="${(register.formData.email!'')}" autocomplete="email" aria-invalid="<#if messagesPerField.existsError('email')>true</#if>">
                <#if messagesPerField.existsError('email')>
                    <span id="input-error" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('email'))?no_esc}
                            </span>
                </#if>
            </div>

            <#if !realm.registrationEmailAsUsername>
                <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                    <div class=label-register">
                        <label for="username" class="label-register">${msg("username")}</label>
                    </div>
                        <input type="text" id="username" class="input-register" name="username" value="${(register.formData.username!'')}" autocomplete="username" />
                </div>
            </#if>

            <#if passwordRequired>

                <label class="label-register" for="password" >${msg("password")}</label>
                <div style="display: flex">
                    <input type="password" id="password" class="input-register" placeholder="${msg("Password*")}" name="password" autocomplete="new-password" aria-invalid="<#if messagesPerField.existsError('password')>true</#if>">

                    <label class="visibility" id="v" onclick="togglePassword()">
                        <img id="vi" src="${url.resourcesPath}/img/eye-off.png"></label>
                </div>
                <#if messagesPerField.existsError('password','password-confirm')>
                    <span id="input-error" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('password-confirm'))?no_esc}
                            </span>
                </#if>
                <div class="${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                    <label class="label-register" for="password-confirm" >${msg("Conferma Password*")}</label>
                    <div style="display: flex">
                        <input  type="password" id="password-confirm" placeholder="${msg("Conferma Password")}" class="input-register" name="password-confirm" aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>">

                        <label class="visibility" id="v-confirm" onclick="toggleConfirmPassword()">
                            <img id="vi-confirm" src="${url.resourcesPath}/img/eye-off.png">
                        </label>
                    </div>
                    <#if messagesPerField.existsError('password','password-confirm')>
                        <span id="input-error" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('password-confirm'))?no_esc}
                            </span>
                    </#if>
                </div>
            </#if>

            <#if recaptchaRequired??>
                <div class="form-group">
                    <div class="${properties.kcInputWrapperClass!}">
                        <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                    </div>
                </div>
            </#if>

            <p style="font-size: 12px ">Campi obbligatori (*)</p>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-buttons">
                    <input id="RegisterButton" class="button-register" type="submit" value="${msg("Registrati")}"/>
                </div>
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <p class="create-account">
                    <div id="kc-registration" style="display: inline-grid">
                        Sei già registrato? <a style="color: #525252" href="${url.loginUrl}" style="color: #1A1660" id="create-account-link">Torna al login</a>
                    </div>
                </div>
            </div>
        </form>
        </div>
        </div>
    </#if>
</@layout.registrationLayout>