*** Keywords ***
Login page
    Set Selenium Speed    ${SeleniumSpeed}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    ${usernameInput}    ${Username}
    Input Password    ${passwordInput}    ${Password}
    Click Element    ${btnLogin}
    ${result}    Run Keyword And Return Status    Element Should Be Visible    //body[@class="modal-open"]
    Run Keyword If    ${result}    Continue Login
    Wait Until Element Is Visible    ${tabRequirement}    ${Timeout60}
    Click Element    ${tabRequirement}
    #Sleep    5
    Wait Until Element Is Visible    ${Testproject}    ${Timeout15}    ${NotifyError}
    Click Element    ${Testproject}

Continue Login
    Wait Until Element Is Visible    ${btnRemove}
    Click Element    ${btnRemove}
    Click Element    ${btnGo}

Delete Requirement
    [Arguments]    ${arg}
    @{list}=    Get WebElements    ${arg}
    FOR    ${i}    IN    @{list}
        Wait Until Element Is Visible    ${i}    ${Timeout60}    ${NotifyError}
        Open Context Menu    ${i}
        Wait Until Element Is Visible    ${btnDelete}
        Click Element    ${btnDelete}
        Wait Until Element Is Visible    ${DialogUnderlay}
        Click Element    ${btnYes}
    END

Verify Create Success
    [Arguments]    ${arg1}    ${arg2}
    ${x}=    Evaluate    ${arg2}-${arg1}
    Should Be True    ${x} == 1

Verify Update Success
    [Arguments]    ${arg}    ${expected}
    Should Be True    '${arg}' == '${expected}'

Verify Delete Success
    [Arguments]    ${arg1}    ${arg2}
    ${x}=    Evaluate    ${arg1}-${arg2}
    Should Be True    ${x} == 1
