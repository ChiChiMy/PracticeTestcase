*** Settings ***
Suite Setup       Login page
Suite Teardown    Close Browser
Test Teardown     Delete Element With Locator    ${module}
Library           SeleniumLibrary
Resource          GeneralKeyword.robot
Resource          XpathRequirement.robot
Resource          GeneralXpath.robot

*** Test Cases ***
Create a new Requirement
    [Tags]    TC1
    [Setup]    Run Keywords    Create New Module For Requirement
    Wait Until Element Is Visible    ${numberRequirement}    ${timeout_15s}
    ${numberReq1}=    Get Text    ${numberRequirement}
    Create New Requirement    ${textNameRequirement}
    Click Element    ${module}
    Wait Until Element Is Visible    ${numberRequirement}
    ${numberReq2}=    Get Text    ${numberRequirement}
    Verify Create Success    ${numberReq1}    ${numberReq2}

Create a new Sub Module
    [Tags]    TC2
    [Setup]    Run Keywords    Create New Module For Requirement
    Wait Until Element Is Visible    ${module}    ${timeout_15s}
    Click Element    ${module}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub1}=    Get Text    ${numberSubModule}
    Create New Sub Module    ${textNameSubModule}
    Click Element    ${module}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub2}=    Get Text    ${numberSubModule}
    Verify Create Success    ${numberSub1}    ${numberSub2}

Update a Requirement
    [Tags]    TC3
    [Setup]    Run Keywords    Create New Module For Requirement
    ...    AND    Create New Requirement    ${textNameRequirement}
    Wait Until Element Is Visible    ${module}    ${timeout_15s}
    Click Element    ${module}
    Wait Until Element Is Visible    ${selectRequirement}    ${timeout_15s}
    Click Element    ${selectRequirement}
    Wait Until Element Is Visible    ${nameReqUpLocator}    ${timeout_15s}
    Click Element    ${nameReqUpLocator}
    Wait Until Element Is Visible    ${nameRequirementInput}    ${timeout_15s}
    Press Key    ${nameRequirementInput}    ${textRequirementUp}
    Select ComboBox    ${statusButton}    ${selectStatusUp}
    Select ComboBox    ${priorityButton}    ${selectPriorityUp}
    Select ComboBox    ${typeButton}    ${selectTypeUp}
    Click Element    ${assignButton}
    Wait Until Element Is Visible    ${clearAllButton}
    Click Element    ${clearAllButton}
    Click Element    ${selectAssignUp}
    Select Frame    ${descriptionReqIframe}
    Input Text    ${descriptionReqInput}    ${textDescriptionReqUp}
    Unselect Frame
    Wait Until Element Is Visible    ${saveButton}
    Click Element    ${saveButton}
    Element Text Should Be    ${nameReqUpLocator}    ${textRequirementUp}
    ${Status}    Get Value    ${statusInput}
    Should Be True    '${Status}'=='${textStatus}'
    ${Priority}    Get Value    ${priorityInput}
    Should Be True    '${Priority}'=='${textPriority}'
    ${Type}    Get Value    ${typeInput}
    Should Be True    '${Type}'=='${textType}'
    ${Assign}    Get Value    ${assignInput}
    Should Be True    '${Assign}'=='${textAssign}'
    Frame Should Contain    ${descriptionReqIframe}    ${textDescriptionReqUp}

Delete a Requirement
    [Tags]    TC4
    [Setup]    Run Keywords    Create New Module For Requirement
    ...    AND    Create New Requirement    ${textNameRequirement}
    Wait Until Element Is Visible    ${module}    ${timeout_15s}
    Click Element    ${module}
    Wait Until Element Is Visible    ${numberRequirement}
    ${numberReq1}=    Get Text    ${numberRequirement}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconRequirement}
    Run Keyword If    ${icon}    Click Element    ${iconRequirement}
    Right Click And Delete    ${selectDeleteReq}
    Wait Until Element Is Visible    ${module}
    Click Element    ${module}
    Wait Until Element Is Visible    ${numberRequirement}
    ${numberReq2}=    Get Text    ${numberRequirement}
    Verify Delete Success    ${numberReq1}    ${numberReq2}

Update a Sub Module
    [Tags]    TC5
    [Setup]    Run Keywords    Create New Module For Requirement
    ...    AND    Create New Sub Module    ${textNameSubModule}
    Wait Until Element Is Visible    ${module}    ${timeout_15s}
    Click Element    ${module}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${selectSubModuleUp}
    Click Element    ${selectSubModuleUp}
    Wait Until Element Is Visible    ${nameSMLocator}
    Click Element    ${nameSMLocator}
    Wait Until Element Is Visible    ${nameModuleInput}    ${timeout_15s}
    Press Key    ${nameModuleInput}    ${textNameSubModuleUp}
    Click Element    ${tabProperties}
    Wait Until Element Is Visible    ${iframeSubModule}    ${timeout_15s}
    Select Frame    ${iframeSubModule}
    Input Text    ${descriptionSMInput}    ${textDescriptionSMUp}
    Unselect Frame
    Wait Until Element Is Visible    ${saveSMButton}
    Click Button    ${saveSMButton}
    ${TextSub}    Get Text    ${nameSMLocator}
    Should Be True    '${TextSub}'=='${textNameSubModuleUp}'
    Wait Until Element Is Visible    ${iframeSubModule}
    Frame Should Contain    ${iframeSubModule}    ${textDescriptionSMUp}

Delete a Sub Module
    [Tags]    TC6
    [Setup]    Run Keywords    Create New Module For Requirement
    ...    AND    Create New Sub Module    ${textNameSubModule}
    #[Setup]    Create New Sub Module    ${textNameSubModule}
    Wait Until Element Is Visible    ${module}    ${timeout_15s}
    Click Element    ${module}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub1}=    Get Text    ${numberSubModule}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${selectSubModuleDel}    ${timeout_15s}
    Click Element    ${selectSubModuleDel}
    Right Click And Delete    ${selectSubModuleDel}
    Wait Until Element Is Visible    ${module}    ${timeout_15s}
    Click Element    ${module}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub2}=    Get Text    ${numberSubModule}
    Verify Delete Success    ${numberSub1}    ${numberSub2}

*** Keywords ***
