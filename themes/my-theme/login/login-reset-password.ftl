<#assign yourConditionToDetectMobile = true> <!-- o qualsiasi altra logica necessaria per rilevare mobile o desktop -->

<#assign isMobile = false>
<#if yourConditionToDetectMobile>
    <#assign isMobile = true>
</#if>

<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
    <#elseif section = "form">
        <div class="forgot-password-container">
        <div class="logo-forgot-password">
            <img src="${url.
            resourcesPath}/img/Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" rel="icon">
        </div>
        <form id="kc-reset-password-form" class="form reset-password ${properties.kcFormClass!}" action="${url.loginAction}" method="post">
             <h2 class="h2-forgot-password">Reset Password</h2>
            <p class="p-forgot-password">Inserisci la mail associata al tuo account e riceverai un link per resettare la tua password</p>
            <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!} <#if usernameEditDisabled??>mdc-text-field--disabled</#if>">
                    <label class="label-forgot-password" for="email">Email</label>
                    <input class="input-forgot-password" type="text" name="username" placeholder="Inserisci la tua email" required>
                </div>


                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <button class="button-forgot-password" type="submit">
                        Reset Password
                    </button>
                </div>

            <div class="clearfix"></div>
        </form>
        </div>
    <#elseif section = "info" >
        <hr />
        ${msg("emailInstruction")?no_esc}
    </#if>

</@layout.registrationLayout>

