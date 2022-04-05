*** Settings ***
Suite Setup       Login page
Suite Teardown    Close Browser
Resource          GeneralKeyword.robot
Resource          GeneralXpath.robot
Library           SeleniumLibrary
Resource          XpathTestDesign.robot

*** Test Cases ***
Create a new Test Case
    Wait Until Element Is Visible    ${tabDesign}    ${Timeout60}
    Click Element    ${tabDesign}
    Wait Until Element Is Visible    ${testDesignProject}    ${Timeout15}    ${NotifyError}
    Click Element    ${testDesignProject}
    Delete Requirement    ${moduleDesign}
    Wait Until Element Is Visible    ${desNewModuleButton}    ${Timeout15}    ${NotifyError}
    Click Element    ${desNewModuleButton}
    Wait Until Element Is Visible    ${inputNameModule}    ${Timeout15}
    Press Key    ${inputNameModule}    ${textNameModuleDes}
    Click Element    ${designReloadButton}
    Wait Until Element Is Visible    ${moduleDesign}
    Click Element    ${moduleDesign}
    Wait Until Element Is Visible    ${numberTestCaseDes}
    ${numberTC1}    Get Text    ${numberTestCaseDes}
    Open Context Menu    ${moduleDesign}
    Wait Until Element Is Visible    ${textcaseButton}
    Click Element    ${textcaseButton}
    Wait Until Element Is Visible    ${inputTestCase}
    Press Key    ${inputTestCase}    ${textNameTestCase}
    Select Element    ${status}    ${selectStatusTC}
    Select Element    ${type}    ${selectTypeTC}
    Select Element    ${assignTo}    ${selectAssignTC}
    Click Element    ${doneButton}
    Wait Until Element Is Visible    ${iframeTC}    ${Timeout15}    ${NotifyError}
    Select Frame    ${iframeTC}
    Input Text    ${inputIframeTC}    ${textDescription}
    Unselect Frame
    Select Element    ${priority}    ${selectpriorityTC}
    Wait Until Element Is Enabled    ${preTestStep}    ${Timeout15}
    Click Element    ${preTestStep}
    Wait Until Element Is Visible    ${inputTestStep}
    Press Keys    ${inputTestStep}    ${textprecodition}
    Click Element    ${addButton}
    Wait Until Element Is Visible    ${inputTestStep}
    Press Keys    ${inputTestStep}    ${textstep1}
    Click Element    ${addButton}
    Wait Until Element Is Visible    ${inputTestStep}
    Press Keys    ${inputTestStep}    ${textstep2}
    Click Element    ${selectExpected}
    Wait Until Element Is Visible    ${inputTestStep}
    Press Keys    ${inputTestStep}    ${expected2}
    Click Element    ${saveTCButton}
    Wait Until Element Is Enabled    ${inputTestCase}    ${Timeout15}
    ${TextTC}=    Get Value    ${inputTestCase}
    Should Be True    '${TextTC}'=='${textNameTestCase}'
    Click Element    ${moduleDesign}
    Wait Until Element Is Visible    ${nameModule1}
    Element Text Should Be    ${nameModule1}    ${textNameModuleDes}
    Wait Until Element Is Visible    ${numberTestCaseDes}
    ${numberTC2}    Get Text    ${numberTestCaseDes}
    Verify Create Success    ${numberTC1}    ${numberTC2}

Update a Test Case
    Click Element    ${moduleDesign}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconTestCse}
    Run Keyword If    ${icon}    Click Element    ${iconTestCse}
    Wait Until Element Is Visible    ${selectUpTestCase}
    Click Element    ${selectUpTestCase}
    Wait Until Element Is Visible    ${nameTestCase}
    Click Element    ${nameTestCase}
    Wait Until Element Is Visible    ${inputTestCase}
    Press Key    ${inputTestCase}    ${textnameUpTC}
    Select Element    ${status}    ${selectUpStatusTC}
    Select From List By Label    ${selectStatusTC1}    ${textStatusUpTC}
    Select From List By Label    ${selectTypeTC1}    ${textTypeUpTC}
    Click Element    ${assignTo}
    Wait Until Element Is Visible    ${clearAllButton}
    Click Element    ${clearAllButton}
    Click Element    ${SelectDemoUser}
    Click Element    ${doneButton}
    Wait Until Element Is Visible    ${iframeTC}    ${Timeout15}    ${NotifyError}
    Select Frame    ${iframeTC}
    Input Text    ${inputIframeTC}    ${textDescriptionUp}
    Unselect Frame
    Select From List By Label    ${selectpriorityTC1}    ${textPriorityUpTC}
    Click Element    ${step1}
    Wait Until Element Is Visible    ${inputTestStep}
    Clear Element Text    ${inputTestStep}
    Press Keys    ${inputTestStep}    ${textstep1Up}
    Click Element    ${step2}
    Wait Until Element Is Visible    ${inputTestStep}
    Clear Element Text    ${inputTestStep}
    Press Keys    ${inputTestStep}    ${textstep2Up}
    Click Element    ${saveTCButton}
    Wait Until Element Is Visible    ${nameTestCase}    ${Timeout15}
    Element Text Should Be    ${nameTestCase}    ${textnameUpTC}
    Wait Until Element Is Visible    ${selectStatusTC1}
    List Selection Should Be    ${selectStatusTC1}    ${textStatusUpTC}
    List Selection Should Be    ${selectTypeTC1}    ${textTypeUpTC}
    List Selection Should Be    ${selectpriorityTC1}    ${textPriorityUpTC}
    Frame Should Contain    ${iframeTC}    ${textDescriptionUp}
    Element Should Be Visible    ${step1Up}
    Element Should Be Visible    ${step2Up}
    Element Should Be Visible    ${imgDemoUser}
    Element Should Not Be Visible    ${imgAPI}

Delete a Test Case
    Wait Until Element Is Visible    ${moduleDesign}    ${Timeout15}
    Click Element    ${moduleDesign}
    Wait Until Element Is Visible    ${numberTestCaseDes}    ${Timeout15}
    ${numberTC1}    Get Text    ${numberTestCaseDes}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconTestCase}
    Run Keyword If    ${icon}    Click Element    ${iconTestCase}
    Wait Until Element Is Visible    ${selectDelTestCase}    ${Timeout15}
    Click Element    ${selectDelTestCase}
    Open Context Menu    ${selectDelTestCase}
    Click Delete
    Wait Until Element Is Visible    ${moduleDesign}    ${Timeout15}
    Click Element    ${moduleDesign}
    Wait Until Element Is Visible    ${numberTestCaseDes}    ${Timeout15}
    ${numberTC2}    Get Text    ${numberTestCaseDes}
    Verify Delete Success    ${numberTC1}    ${numberTC2}
