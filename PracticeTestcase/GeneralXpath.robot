*** Variables ***
${browser}        Chrome
${username}       api-test@qasymphony.com
${password}       admin123
${timeout_60s}    60
${timeout_15s}    15
${timeout_10s}    10
${notifyError}    error
${seleniumSpeed}    0.5
${modalSession}    //body[@class="modal-open"]
${url}            https://apitryout.qtestnet.com/
${usernameInput}    //input[@id='userName']
${passwordInput}    //input[@id='password']
${LoginButton}    //div[@class='submit']
${nameModuleInput}    //span[@id="moduleHeader_editableContent"]//following-sibling::input
${goButton}       //button[@id="reloginBtn"]
${removeButton}    //tr[@data-index="0"]//a[@title="Remove"]
${dialogUnderlay}    //div[@id="confirm_dialog_underlay"]
${yesButton}      //span[@class="dijitReset dijitInline dijitButtonText" and text()="Yes"]
${deleteButton}    //span[@class="icon-text" and @title="Delete"]
#######
@{_tmp}           browserName: chrome,    platformName: WIN10
#@{_tmp}          browserName: chrome,    platform: WIN10,    platformName: windows,    version: 10.0,    username: USERNAME,    accessKey: ACCESSKEY,    video: True
${browser}        chrome
${capabilities}    ${EMPTY.join(${_tmp})}
${remote_url}     http://192.168.199.198:4444
