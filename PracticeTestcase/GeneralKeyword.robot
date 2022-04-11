*** Keywords ***
Login page
    Set Selenium Speed    ${seleniumSpeed}
    Open Browser    ${url}    ${browser}
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

Create New Module For Requirement
    #[Arguments]    ${name}
    Wait Until Element Is Visible    ${tabRequirement}    ${timeout_60s}
    Click Element    ${tabRequirement}
    Wait Until Element Is Visible    ${nameProject}    ${timeout_15s}    ${notifyError}
    Click Element    ${nameProject}
    Delete Element With Locator    ${Module}
    Wait Until Element Is Enabled    ${newModuleButton}    ${timeout_15s}    ${notifyError}
    Click Element    ${newModuleButton}
    Wait Until Element Is Visible    ${nameModuleInput}    ${timeout_15s}
    Press Key    ${nameModuleInput}    ${textNameModule}
    Click Element    ${reloadButton}

Create New Module For TestDesign
    #[Arguments]    ${name}
    Wait Until Element Is Visible    ${tabDesign}    ${timeout_60s}
    Click Element    ${tabDesign}
    Wait Until Element Is Visible    ${testDesignProject}    ${timeout_15s}    ${notifyError}
    Click Element    ${testDesignProject}
    Delete Element With Locator    ${moduleDesign}
    Wait Until Element Is Visible    ${newModuleButton}    ${timeout_15s}    ${notifyError}
    Click Element    ${newModuleButton}
    Wait Until Element Is Visible    ${nameModuleInput}    ${timeout_15s}
    Press Key    ${nameModuleInput}    ${textNameModuleDes}
    Click Element    ${designReloadButton}

Create New Requirement
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${Module}    ${timeout_15s}
    Click Element    ${Module}
    Open Context Menu    ${Module}
    Click Element    ${newRequirementButton}
    Wait Until Element Is Visible    ${nameRequirementInput}    ${timeout_15s}    ${notifyError}
    Press Key    ${nameRequirementInput}    ${name}
    Select ComboBox    ${priorityButton}    ${selectPriority}
    Select ComboBox    ${typeButton}    ${selectType}
    Click Element    ${assignButton}
    Wait Until Element Is Enabled    ${selectAssign}    ${timeout_15s}
    Select Checkbox    ${selectAssign}
    Wait Until Element Is Visible    ${descriptionReqIframe}    ${timeout_15s}
    Select Frame    ${descriptionReqIframe}
    Input Text    ${descriptionReqInput}    ${textDescriptionReq}
    Unselect Frame
    Wait Until Element Is Visible    ${saveButton}    ${timeout_15s}
    Click Element    ${saveButton}

Create New Sub Module
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${Module}    ${timeout_15s}
    Click Element    ${Module}
    Open Context Menu    ${Module}
    Click Element    ${newSubModuleButton}
    Wait Until Element Is Visible    ${nameModuleInput}    ${timeout_15s}
    Press Key    ${nameModuleInput}    ${name}
    Click Element    ${tabProperties}
    Wait Until Element Is Visible    ${iframeSubModule}    ${timeout_15s}
    Select Frame    ${iframeSubModule}
    Input Text    ${descriptionSMInput}    ${textDescriptionSM}
    Unselect Frame
    Wait Until Element Is Visible    ${saveSMButton}    ${timeout_15s}
    Click Button    ${saveSMButton}

Create New Test Case
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${moduleDesign}    ${timeout_15s}
    Click Element    ${moduleDesign}
    Open Context Menu    ${moduleDesign}
    Wait Until Element Is Visible    ${textcaseButton}    ${timeout_15s}
    Click Element    ${textcaseButton}
    Wait Until Element Is Visible    ${testcaseInput}    ${timeout_15s}
    Press Key    ${testcaseInput}    ${name}
    Select ComboBox    ${statusTextBox}    ${selectStatus}
    Select ComboBox    ${typeTextBox}    ${selectType}
    Select ComboBox    ${assignToTextBox}    ${selectAssign}
    Click Element    ${doneButton}
    Wait Until Element Is Visible    ${iframeTC}    ${timeout_15s}    ${notifyError}
    Select Frame    ${iframeTC}
    Input Text    ${inputIframeTC}    ${textDescription}
    Unselect Frame
    Select ComboBox    ${priorityTextBox}    ${selectpriority}
    #Select Checkbox    ${checkboxTesting}
    Wait Until Element Is Enabled    ${preTestStep}    ${timeout_15s}
    Click Element    ${preTestStep}
    Wait Until Element Is Visible    ${testStepInput}    ${timeout_15s}
    Press Keys    ${testStepInput}    ${textprecodition}
    Click Element    ${addButton}
    Wait Until Element Is Visible    ${testStepInput}    ${timeout_15s}
    Press Keys    ${testStepInput}    ${textstep1}
    Click Element    ${addButton}
    Wait Until Element Is Visible    ${testStepInput}    ${timeout_15s}
    Press Keys    ${testStepInput}    ${textstep2}
    Click Element    ${selectExpected}
    Wait Until Element Is Visible    ${testStepInput}    ${timeout_15s}
    Press Keys    ${testStepInput}    ${expected}
    Click Element    ${saveTCButton}

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
    Wait Until Element Is Visible    ${locator}
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
    Wait Until Element Is Visible    ${selectedElement}
    Click Element    ${selectedElement}
