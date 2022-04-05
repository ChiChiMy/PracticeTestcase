*** Keywords ***
Login page
    Set Selenium Speed    ${SeleniumSpeed}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    ${usernameInput}    ${Username}
    Input Password    ${passwordInput}    ${Password}
    Click Element    ${btnLogin}
    ${result}    Run Keyword And Return Status    Element Should Be Visible    ${ModalSession}
    Run Keyword If    ${result}    Continue Login

Terminate Session
    ${result}    Run Keyword And Return Status    Element Should Be Visible    ${ModalSession}
    ${removeButton}=    Get WebElement    ${btnRemove}
    Run Keyword If    '${result}'=='True'    Click Element    ${removeButton}
    Click Element    ${btnGo}

Continue Login
    Wait Until Element Is Visible    ${btnRemove}
    Click Element    ${btnRemove}
    Click Element    ${btnGo}

Delete Requirement
    [Arguments]    ${arg}
    @{list}=    Get WebElements    ${arg}
    FOR    ${i}    IN    @{list}
        Wait Until Element Is Visible    ${i}    ${Timeout60}
        Click Element    ${i}
        Open Context Menu    ${i}
        Wait Until Element Is Visible    ${btnDelete}
        Click Element    ${btnDelete}
        Wait Until Element Is Visible    ${DialogUnderlay}
        Click Element    ${btnYes}
    END

Click Delete
    Wait Until Element Is Visible    ${btnDelete}
    Click Element    ${btnDelete}
    Wait Until Element Is Visible    ${DialogUnderlay}
    Click Element    ${btnYes}

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

Select Element
    [Arguments]    ${Locator}    ${selectedElement}
    Click Element    ${Locator}
    Wait Until Element Is Visible    ${selectedElement}
    Click Element    ${selectedElement}
