*** Settings ***
Suite Setup       Login page
Suite Teardown    Close Browser
Test Teardown     Delete Element With Locator    ${moduleDesign}
Resource          GeneralKeyword.robot
Library           SeleniumLibrary
Resource          XpathTestDesign.robot
Resource          GeneralXpath.robot

*** Test Cases ***
Create a new Test Case
    [Tags]    TC7
    Create New Module For TestDesign
    Wait Until Element Is Visible    ${numberTestCaseDes}
    ${numberTC1}    Get Text    ${numberTestCaseDes}
    Create New Test Case    ${textNameTestCase}
    Wait Until Element Is Enabled    ${testcaseInput}    ${timeout_15s}
    ${TextTC}=    Get Value    ${testcaseInput}
    Should Be True    '${TextTC}'=='${textNameTestCase}'
    Click Element    ${moduleDesign}
    Wait Until Element Is Visible    ${nameModule}    ${timeout_15s}
    Element Text Should Be    ${nameModule}    ${textNameModuleDes}
    Wait Until Element Is Visible    ${numberTestCaseDes}
    ${numberTC2}    Get Text    ${numberTestCaseDes}
    Verify Create Success    ${numberTC1}    ${numberTC2}

Update a Test Case
    [Tags]    TC8
    [Setup]    Run Keywords    Create New Module For TestDesign
    ...    AND    Create New Test Case    ${textNameTestCase}
    Click Element    ${moduleDesign}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconTestCse}
    Run Keyword If    ${icon}    Click Element    ${iconTestCse}
    Wait Until Element Is Visible    ${selectUpTestCase}    ${timeout_15s}
    Click Element    ${selectUpTestCase}
    Wait Until Element Is Visible    ${nameTestCase}    ${timeout_15s}
    Click Element    ${nameTestCase}
    Wait Until Element Is Visible    ${testcaseInput}
    Press Key    ${testcaseInput}    ${textnameUpTC}
    Select From List By Label    ${selectStatusTC}    ${textStatusUpTC}
    Wait Until Element Is Enabled    ${selectTypeTC}
    Select From List By Label    ${selectTypeTC}    ${textTypeUpTC}
    Click Element    ${assignToTextBox}
    Wait Until Element Is Visible    ${clearAllButton}    ${timeout_15s}
    Click Element    ${clearAllButton}
    Click Element    ${SelectDemoUser}
    Click Element    ${doneButton}
    Wait Until Element Is Visible    ${iframeTC}    ${timeout_15s}    ${notifyError}
    Select Frame    ${iframeTC}
    Input Text    ${inputIframeTC}    ${textDescriptionUp}
    Unselect Frame
    Wait Until Element Is Enabled    ${selectpriorityTC}
    Select From List By Label    ${selectpriorityTC}    ${textPriorityUpTC}
    Click Element    ${step_1Description}
    Wait Until Element Is Visible    ${testStepInput}
    Clear Element Text    ${testStepInput}
    Press Keys    ${testStepInput}    ${textstep1Up}
    Click Element    ${step_2Description}
    Wait Until Element Is Visible    ${testStepInput}
    Clear Element Text    ${testStepInput}
    Press Keys    ${testStepInput}    ${textstep2Up}
    Click Element    ${saveTCButton}
    Wait Until Element Is Visible    ${nameTestCase}    ${timeout_15s}
    Element Text Should Be    ${nameTestCase}    ${textnameUpTC}
    Wait Until Element Is Visible    ${selectStatusTC}
    List Selection Should Be    ${selectStatusTC}    ${textStatusUpTC}
    List Selection Should Be    ${selectTypeTC}    ${textTypeUpTC}
    List Selection Should Be    ${selectpriorityTC}    ${textPriorityUpTC}
    Frame Should Contain    ${iframeTC}    ${textDescriptionUp}
    Element Should Be Visible    ${step_1UpDescription}
    Element Should Be Visible    ${step_2UpDescription}
    Element Should Be Visible    ${imgDemoUser}
    Element Should Not Be Visible    ${imgAPI}

Delete a Test Case
    [Tags]    TC9
    [Setup]    Run Keywords    Create New Module For TestDesign
    ...    AND    Create New Test Case    ${textNameTestCase}
    Wait Until Element Is Visible    ${moduleDesign}    ${timeout_15s}
    Click Element    ${moduleDesign}
    Wait Until Element Is Visible    ${numberTestCaseDes}    ${timeout_15s}
    ${numberTC1}    Get Text    ${numberTestCaseDes}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconTestCase}
    Run Keyword If    ${icon}    Click Element    ${iconTestCase}
    Wait Until Element Is Visible    ${selectDelTestCase}    ${timeout_15s}
    Click Element    ${selectDelTestCase}
    Right Click And Delete    ${selectDelTestCase}
    Wait Until Element Is Visible    ${moduleDesign}    ${timeout_15s}
    Click Element    ${moduleDesign}
    Wait Until Element Is Visible    ${numberTestCaseDes}    ${timeout_15s}
    ${numberTC2}    Get Text    ${numberTestCaseDes}
    Verify Delete Success    ${numberTC1}    ${numberTC2}
