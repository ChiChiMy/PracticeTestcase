*** Settings ***
Test Setup        Login page
Library           SeleniumLibrary    #Test Teardown    Close Browser
Resource          GeneralXpath.robot

*** Variables ***

*** Test Cases ***
TC1
    #Create a new Requirement
    Delete Requirement    ${TextModule}
    Wait Until Element Is Visible    ${btnNewModule}    15    ${NotifyError}
    Click Element    ${btnNewModule}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    test1
    Click Element    ${btnReload}
    Wait Until Element Is Visible    ${CountRequirement}
    ${CountReq1}=    Get Text    ${CountRequirement}
    Wait Until Element Is Visible    ${TextModule}
    Open Context Menu    ${TextModule}
    Click Element    ${btnNewRequirement}
    Wait Until Element Is Visible    ${inputNameRequirement}    15    ${NotifyError}
    Clear Element Text    ${inputNameRequirement}
    Press Keys    ${inputNameRequirement}    requirement
    Click Element    ${btnPriority}
    Wait Until Element Is Visible    ${selectPriority}
    Click Element    ${selectPriority}
    Click Element    ${btnType}
    Wait Until Element Is Visible    ${selectType}
    Click Element    ${selectType}
    Click Element    ${btnAssign}
    Wait Until Element Is Enabled    ${SelectAssign}
    Select Checkbox    ${SelectAssign}
    Wait Until Element Is Visible    ${inputDiscription}
    Select Frame    ${iframeReq}
    Input Text    ${inputIframeReq}    discription
    Unselect Frame
    Wait Until Element Is Visible    ${btnSave}
    Click Element    ${btnSave}
    Click Element    ${TextModule}
    Wait Until Element Is Visible    ${CountRequirement}
    ${CountReq2}=    Get Text    ${CountRequirement}
    Verify Create Success    ${CountReq1}    ${CountReq2}

TC2
    #Create a new Sub Module
    Delete Requirement    ${TextModule1}
    Wait Until Element Is Visible    ${btnNewModule}    15    ${NotifyError}
    Click Element    ${btnNewModule}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    test
    Click Element    ${btnReload}
    Wait Until Element Is Visible    ${CountSubModule}
    ${CountSub1}=    Get Text    ${CountSubModule}
    Wait Until Element Is Visible    ${TextModule1}
    Open Context Menu    ${TextModule1}
    Click Element    ${btnNewModule1}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    sub module
    Click Element    ${tabProperties}
    Wait Until Element Is Visible    ${iframeSubModule}
    Select Frame    ${iframeSubModule}
    Input Text    ${SubModuleDiscription}    sub module
    Unselect Frame
    Wait Until Element Is Visible    ${btnSaveSubModule}
    Click Button    ${btnSaveSubModule}
    Click Element    ${TextModule1}
    Wait Until Element Is Visible    ${CountSubModule}
    ${CountSub2}=    Get Text    ${CountSubModule}
    Verify Create Success    ${CountSub1}    ${CountSub2}

TC3
    #Update a requirement
    Wait Until Element Is Visible    ${TextModule}    15
    Click Element    ${TextModule}
    Wait Until Element Is Visible    ${selectUpdateRequirement}    15
    Click Element    ${selectUpdateRequirement}
    Wait Until Element Is Visible    ${textInputUpReq}    15
    Click Element    ${textInputUpReq}
    Wait Until Element Is Visible    ${inputUpdateReq}    10
    Press Key    ${inputUpdateReq}    ${TextNameInputUp}
    Click Element    ${btnStatusUp}
    Wait Until Element Is Visible    ${selectStatusUp}
    Click Element    ${selectStatusUp}
    Click Element    ${btnPriority}
    Wait Until Element Is Visible    ${selectPriorityUp}
    Click Element    ${selectPriorityUp}
    Click Element    ${btnType}
    Wait Until Element Is Visible    ${selectTypeUp}
    Click Element    ${selectTypeUp}
    Click Element    ${btnAssign}
    Wait Until Element Is Enabled    ${selectAssignUp}
    Select Checkbox    ${selectAssignUp}
    Select Frame    ${iframeReq}
    Input Text    ${inputIframeReq}    requirement discription
    Unselect Frame
    Wait Until Element Is Visible    ${btnSave}
    Click Element    ${btnSave}
    Verify Update Success    ${textInputUpReq}    ${TextNameInputUp}

TC4
    #Delete a requirement
    Wait Until Element Is Visible    ${TextModule}    15
    Click Element    ${TextModule}
    Wait Until Element Is Visible    ${CountRequirement}
    ${CountReq1}=    Get Text    ${CountRequirement}
    Wait Until Element Is Visible    ${selectDelReq}    60
    Click Element    ${selectDelReq}
    Open Context Menu    ${DeleteReq}
    Wait Until Element Is Visible    ${btnDeleteReq}
    Click Element    ${btnDeleteReq}
    Wait Until Element Is Visible    ${DialogUnderlay}
    Click Element    ${btnYes}
    Click Element    ${TextModule}
    Wait Until Element Is Visible    ${CountRequirement}
    ${CountReq2}=    Get Text    ${CountRequirement}
    Verify Delete Success    ${CountReq1}    ${CountReq2}

TC5
    #Update a Sub Module
    Wait Until Element Is Visible    ${TextModule1}    15
    Click Element    ${TextModule1}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${SubModule}
    Click Element    ${SubModule}
    Wait Until Element Is Visible    ${inputSubModule}
    Click Element    ${inputSubModule}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    Sub module
    Click Element    ${tabProperties}
    Wait Until Element Is Visible    ${iframeSubModule}    15
    Select Frame    ${iframeSubModule}
    Input Text    ${SubModuleDiscription}    Sub module discription
    Unselect Frame
    Wait Until Element Is Visible    ${btnSaveSubModule}
    Click Button    ${btnSaveSubModule}
    ${TextSub}    Get Text    ${inputSubModule}
    Verify Update Success    ${TextSub}    Sub module

TC6
    #Delete a Sub Module
    Wait Until Element Is Visible    ${TextModule1}    15
    Click Element    ${TextModule1}
    Wait Until Element Is Visible    ${CountSubModule}
    ${CountSub1}=    Get Text    ${CountSubModule}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${SelectDelSubModule}
    Click Element    ${SelectDelSubModule}
    Open Context Menu    ${SelectDelSubModule}
    Wait Until Element Is Visible    ${btnDelete}
    Click Element    ${btnDelete}
    Wait Until Element Is Visible    ${DialogUnderlay}
    Click Element    ${btnYes}
    Click Element    ${TextModule1}
    Wait Until Element Is Visible    ${CountSubModule}
    ${CountSub2}=    Get Text    ${CountSubModule}
    Verify Delete Success    ${CountSub1}    ${CountSub2}

*** Keywords ***
Login page
    Set Selenium Speed    0.5
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Input Text    ${Username}    api-test@qasymphony.com
    Input Password    ${Password}    admin123
    Click Element    ${btnLogin}
    ${display}    Run Keyword And Return Status    Element Should Be Visible    ${ModalSession}
    Run Keyword If    ${display}    Continue Login
    Wait Until Element Is Visible    ${tabRequirement}    60
    Click Element    ${tabRequirement}
    #Sleep    5
    Wait Until Element Is Visible    ${Testproject}    15    ${NotifyError}
    Click Element    ${Testproject}

Continue Login
    Wait Until Element Is Visible    ${btnRemove}
    Click Element    ${btnRemove}
    Click Element    ${btnGo}

Delete Requirement
    [Arguments]    ${arg}
    @{list}=    Get WebElements    ${arg}
    FOR    ${i}    IN    @{list}
        Wait Until Element Is Visible    ${i}    60    ${NotifyError}
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
    #Pass Execution If    ${x} == 1    Pass Execution

Verify Update Success
    [Arguments]    ${locator}    ${expected}
    ${result}    Run Keyword And Return Status    Element Text Should Be    ${locator}    ${expected}    False
    Pass Execution If    ${result}    Update success

Verify Delete Success
    [Arguments]    ${arg1}    ${arg2}
    ${x}=    Evaluate    ${arg1}-${arg2}
    Should Be True    ${x} == 1
