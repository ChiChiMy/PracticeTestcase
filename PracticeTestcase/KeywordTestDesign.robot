*** Keywords ***
Create New Module For TestDesign
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${tabDesign}    ${timeout_60s}
    Click Element    ${tabDesign}
    Wait Until Element Is Visible    ${testDesignProject}    ${timeout_15s}    ${notifyError}
    Click Element    ${testDesignProject}
    Delete Element With Locator    ${moduleDesign}
    Wait Until Element Is Visible    ${newModuleButton}    ${timeout_15s}    ${notifyError}
    Click Element    ${newModuleButton}
    Wait Until Element Is Visible    ${nameModuleInput}    ${timeout_15s}
    Press Key    ${nameModuleInput}    ${name}
    Click Element    ${designReloadButton}

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
