<#assign yourConditionToDetectMobile = true>
<#assign isMobile = false>
<#if yourConditionToDetectMobile>
    <#assign isMobile = true>
</#if>


<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('email'); section>
    <#if section = "header">
    <#elseif section = "form">
        <div class="forgot-password-container">
        <div class="logo-forgot-password">
            <img src="${url.
            resourcesPath}/img/Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" rel="icon">
        </div>
        <form id="kc-reset-password-form" class="form-container" action="${url.loginAction}" method="post">
             <h2 class="h2-forgot-password">Recupero Password</h2>
            <p class="p-forgot-password">Inserisci la mail associata al tuo account e riceverai un link per resettare la tua password</p>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                    <label class="label-forgot-password" for="email">Email</label>
                <input type="text" id="email" name="username" placeholder="${msg("Email")}" class="input-forgot-password" autofocus value="${(auth.attemptedUsername!'')}" aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"/>
                <#if messagesPerField.existsError('email')>
                    <span id="input-error-username" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('email'))?no_esc}
                        </span>
                </#if>
                </div>


                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <button class="button-forgot-password" type="submit">
                        Invia
                    </button>
                </div>

            <p class="create-account">
            <div id="kc-registration">
                <a style="color: #1A1660" href="${url.loginUrl}" id="create-account-link">Torna al login</a>
            </div>

            <div class="clearfix"></div>
        </form>
        </div>
   <#elseif section = "info" >
        <hr />
        ${msg("emailInstruction")?no_esc}
    </#if>

</@layout.registrationLayout>

