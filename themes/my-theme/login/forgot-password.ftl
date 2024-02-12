<#--
<#assign yourConditionToDetectMobile = true> <!-- o qualsiasi altra logica necessaria per rilevare mobile o desktop &ndash;&gt;

<#assign isMobile = false>
<#if yourConditionToDetectMobile>
    <#assign isMobile = true>
</#if>
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "form">
        <div class="forgot-password-container">
        <div class="logo-forgot-password">
            <img src="Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" >
        </div>
        <form id="kc-reset-password-form" class="form reset-password ${properties.kcFormClass!}" action="${url.loginAction}" method="post">

                <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!} <#if usernameEditDisabled??>mdc-text-field--disabled</#if>">
                    <label class="label-forgot-password" for="email">Email</label>
                    <input class="input-forgot-password" type="email" name="email" placeholder="Inserisci la tua email" required>
                </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                            &lt;#&ndash;  <a class="btn btn-default btn-flat btn-block" href="${url.loginUrl}"><i class="fa fa-caret-left"></i>&nbsp;&nbsp;${msg("backToLogin")}</a>  &ndash;&gt;
                            <button class="button-forgot-password"  onclick="window.location.href = ${url.loginUrl}" formnovalidate>Invia
                                ${msg("backToLogin")?no_esc}
                            </button>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    &lt;#&ndash;  <input class="btn btn-primary btn-flat btn-block ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>  &ndash;&gt;
                    <button class="button-forgot-password" type="submit">Invia
                        ${msg("doSubmit")?no_esc}
                    </button>
                </div>
            </div>
            <div class="clearfix"></div>
        </form>
        </div>
    <#elseif section = "info" >
        <hr />
        ${msg("emailInstruction")?no_esc}
    </#if>
</@layout.registrationLayout>-->
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form id="kc-reset-password-form" action="${url.loginAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="input-forgot-passwordpu"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus value="${(auth.attemptedUsername!'')}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                    <#if messagesPerField.existsError('username')>
                        <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>
            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="button-forgot-password" type="submit" value="${msg("doSubmit")}"/>
                </div>
            </div>
        </form>
    <#elseif section = "info" >
        <#if realm.duplicateEmailsAllowed>
            ${msg("emailInstructionUsername")}
        <#else>
            ${msg("emailInstruction")}
        </#if>
    </#if>
</@layout.registrationLayout>