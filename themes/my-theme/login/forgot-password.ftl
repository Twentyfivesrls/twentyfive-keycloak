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
            <img src="Logo - 25 - Twentyfive - Vari formati_Tavola disegno 1 copia 8 1.svg" alt="Logo" >
        </div>
        <form id="kc-reset-password-form" class="form reset-password ${properties.kcFormClass!}" action="${url.loginAction}" method="post">
             <h2 class="h2-forgot-password">Reset Password</h2>
                <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!} <#if usernameEditDisabled??>mdc-text-field--disabled</#if>">
                    <label class="label-forgot-password" for="email">Email</label>
                    <input class="input-forgot-password" type="email" name="email" placeholder="Inserisci la tua email" required>
                </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                            <button class="button-forgot-password"  onclick="window.location.href = ${url.loginUrl}" formnovalidate>Invia
                                ${msg("backToLogin")?no_esc}
                            </button>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <#--  <input class="btn btn-primary btn-flat btn-block ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>  -->
                    <button class="button-forgot-password" type="submit">
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
</@layout.registrationLayout>

<style>
    .logo-forgot-password {
        position: absolute;
        top: 2rem;
        left: 50%;
        transform: translateX(-50%);
        z-index: 2;
    }

    .forgot-password-container {
        height: 430px;
        margin-top: 10px;
        background-color: #fff;
        padding: 25px;
        border-radius: 8px;
        width: 260px;
        text-align: center;
    }

    .label-forgot-password {
        margin-top: 30px;
        display: block;
        text-align: left;
        margin-bottom: 5px;
        font-weight: bold; /* Testo in grassetto */
    }

    .h2-forgot-password {
        font-weight: bold; /* Testo in grassetto */
    }

    .p-forgot-password {
        margin-bottom: 40px;
    }

    .input-forgot-password {
        width: 100%;
        padding: 10px;
        margin-bottom: 30px;
        box-sizing: border-box;
        border-radius: 4px; /* Bordi più arrotondati */
        border: 1px solid #060606; /* Bordo bianco */
    }

    .button-forgot-password {
        width: 100%;
        padding: 10px;
        background-color: #1A1660; /* Colore del pulsante (blu scuro) */
        color: #fff;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        margin-bottom: 40px;
    }

    .a-forgot-password {
        text-decoration: none;
        color: #1A1660; /* Colore del link (blu) */
        border-bottom: 1px solid #1A1660; /* Linea sottostante */
    }

    .a-forgot-password:hover {
        color: #1A1660; /* Cambia colore al passaggio del mouse (blu scuro) */
        border-bottom-color: #1A1660;
    }
</style>