*** Keywords ***
Create New Module For Requirement
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${tabRequirement}    ${timeout_60s}
    Click Element    ${tabRequirement}
    Wait Until Element Is Visible    ${nameProject}    ${timeout_15s}    ${notifyError}
    Click Element    ${nameProject}
    Delete Element With Locator    ${Module}
    Wait Until Element Is Enabled    ${newModuleButton}    ${timeout_15s}    ${notifyError}
    Click Element    ${newModuleButton}
    Wait Until Element Is Visible    ${nameModuleInput}    ${timeout_15s}
    Press Key    ${nameModuleInput}    ${name}
    Click Element    ${reloadButton}

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
    Wait Until Element Is Visible    ${descriptionReqIframe}
    Select Frame    ${descriptionReqIframe}
    Input Text    ${descriptionReqInput}    ${textDescriptionReq}
    Unselect Frame
    Wait Until Element Is Visible    ${saveButton}
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
    Wait Until Element Is Visible    ${iframeSubModule}    ${timeout_60s}
    Select Frame    ${iframeSubModule}
    Input Text    ${descriptionSMInput}    ${textDescriptionSM}
    Unselect Frame
    Wait Until Element Is Visible    ${saveSMButton}    ${timeout_15s}
    Click Button    ${saveSMButton}
