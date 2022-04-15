*** Keywords ***
Login page
    Set Selenium Speed    ${seleniumSpeed}
    Open Browser    ${url}    browser=${browser}
    Maximize Browser Window
    Input Text    ${usernameInput}    ${username}
    Input Password    ${passwordInput}    ${password}
    Click Element    ${LoginButton}
    ${result}    Run Keyword And Return Status    Element Should Be Visible    ${modalSession}
    Run Keyword If    ${result}    Continue Login

Continue Login
    Wait Until Element Is Visible    ${removeButton}
    Click Element    ${removeButton}
    Click Element    ${goButton}

Delete Element With Locator
    [Arguments]    ${locator}
    @{list}=    Get WebElements    ${locator}
    FOR    ${i}    IN    @{list}
        Wait Until Element Is Visible    ${i}    ${Timeout_60s}
        Click Element    ${i}
        Right Click And Delete    ${i}
    END

Right Click And Delete
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    ${timeout_15s}
    Click Element    ${locator}
    Open Context Menu    ${locator}
    Wait Until Element Is Visible    ${deleteButton}    ${timeout_15s}
    Click Element    ${deleteButton}
    Wait Until Element Is Visible    ${dialogUnderlay}    ${timeout_15s}
    Click Element    ${yesButton}
    Set Selenium Timeout    5

Verify Create Success
    [Arguments]    ${arg1}    ${arg2}
    ${x}=    Evaluate    ${arg2}-${arg1}
    Should Be True    ${x} == 1

Verify Delete Success
    [Arguments]    ${arg1}    ${arg2}
    ${x}=    Evaluate    ${arg1}-${arg2}
    Should Be True    ${x} == 1

Select ComboBox
    [Arguments]    ${locator}    ${selectedElement}
    Click Element    ${locator}
    Wait Until Element Is Visible    ${selectedElement}    ${timeout_15s}
    Click Element    ${selectedElement}
