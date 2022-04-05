*** Settings ***
Suite Setup       Login page
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          GeneralXpath.robot
Resource          GeneralKeyword.robot

*** Test Cases ***
Create a new Requirement
    Wait Until Element Is Visible    ${tabRequirement}    ${Timeout60}
    Click Element    ${tabRequirement}
    Wait Until Element Is Visible    ${Testproject}    ${Timeout15}    ${NotifyError}
    Click Element    ${Testproject}
    Delete Requirement    ${Module}
    Wait Until Element Is Enabled    ${newModuleButton}    ${Timeout15}    ${NotifyError}
    Click Element    ${newModuleButton}
    Wait Until Element Is Visible    ${inputNameModule}    ${Timeout15}
    Press Key    ${inputNameModule}    ${TextNameModule}
    Click Element    ${reloadButton}
    Wait Until Element Is Visible    ${numberRequirement}    ${Timeout15}
    ${numberReq1}=    Get Text    ${numberRequirement}
    Wait Until Element Is Visible    ${Module}    ${Timeout15}
    Click Element    ${Module}
    Open Context Menu    ${Module}
    Click Element    ${newReqButton}
    Wait Until Element Is Visible    ${inputNameRequirement}    ${Timeout15}    ${NotifyError}
    Press Key    ${inputNameRequirement}    ${TextNameRequirement}
    Select Element    ${btnPriority}    ${selectPriority}
    Select Element    ${btnType}    ${selectType}
    Click Element    ${btnAssign}
    Wait Until Element Is Enabled    ${selectAssign}
    Select Checkbox    ${selectAssign}
    Wait Until Element Is Visible    ${inputDescription}
    Select Frame    ${iframeReq}
    Input Text    ${inputIframeReq}    ${TextDesRequirement}
    Unselect Frame
    Wait Until Element Is Visible    ${btnSave}
    Click Element    ${btnSave}
    Click Element    ${Module}
    Wait Until Element Is Visible    ${numberRequirement}
    ${numberReq2}=    Get Text    ${numberRequirement}
    Verify Create Success    ${numberReq1}    ${numberReq2}

Create a new Sub Module
    Click Element    ${Testproject}
    Delete Requirement    ${Module2}
    Wait Until Element Is Visible    ${newModuleButton}    ${Timeout15}    ${NotifyError}
    Click Element    ${newModuleButton}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    ${TextNameModule2}
    Click Element    ${reloadButton}
    Wait Until Element Is Visible    ${Module2}    ${Timeout15}
    Click Element    ${Module2}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub1}=    Get Text    ${numberSubModule}
    Wait Until Element Is Visible    ${Module2}
    Click Element    ${Module2}
    Open Context Menu    ${Module2}
    Click Element    ${btnNewSubModule}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    ${TextNameSub}
    Click Element    ${tabProperties}
    Wait Until Element Is Visible    ${iframeSubModule}
    Select Frame    ${iframeSubModule}
    Input Text    ${subModuleDescription}    ${TextDesSub}
    Unselect Frame
    Wait Until Element Is Visible    ${btnSaveSubModule}
    Click Button    ${btnSaveSubModule}
    Click Element    ${Module2}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub2}=    Get Text    ${numberSubModule}
    Verify Create Success    ${numberSub1}    ${numberSub2}

Update a requirement
    Wait Until Element Is Visible    ${Module}    ${Timeout15}
    Click Element    ${Module}
    Wait Until Element Is Visible    ${selectUpdateRequirement}    ${Timeout15}
    Click Element    ${selectUpdateRequirement}
    Wait Until Element Is Visible    ${textInputUpReq}    ${Timeout15}
    Click Element    ${textInputUpReq}
    Wait Until Element Is Visible    ${inputUpdateReq}    ${Timeout15}
    Press Key    ${inputUpdateReq}    ${TextReqUp}
    Select Element    ${btnStatusUp}    ${selectStatusUp}
    Select Element    ${btnPriority}    ${selectPriorityUp}
    Select Element    ${btnType}    ${selectTypeUp}
    Click Element    ${btnAssign}
    Wait Until Element Is Visible    ${clearAllBtn}
    Click Element    ${clearAllBtn}
    Click Element    ${selectAssignUp}
    Select Frame    ${iframeReq}
    Input Text    ${inputIframeReq}    ${TextDesReqUp}
    Unselect Frame
    Wait Until Element Is Visible    ${btnSave}
    Click Element    ${btnSave}
    Element Text Should Be    ${textInputUpReq}    ${TextReqUp}
    ${Status}    Get Value    ${StatusInput}
    Should Be True    '${Status}'=='${TextStatus}'
    ${Priority}    Get Value    ${PriorityInput}
    Should Be True    '${Priority}'=='${TextPriority}'
    ${Type}    Get Value    ${TypeInput}
    Should Be True    '${Type}'=='${TextType}'
    ${Assign}    Get Value    ${AssignInput}
    Should Be True    '${Assign}'=='${TextAssign}'
    Frame Should Contain    ${iframeReq}    ${TextDesReqUp}

Delete a requirement
    Wait Until Element Is Visible    ${Module}    ${Timeout15}
    Click Element    ${Module}
    Wait Until Element Is Visible    ${numberRequirement}
    ${numberReq1}=    Get Text    ${numberRequirement}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconRequirement}
    Run Keyword If    ${icon}    Click Element    ${iconRequirement}
    Wait Until Element Is Visible    ${selectDeleteReq}
    Click Element    ${selectDeleteReq}
    Open Context Menu    ${selectDeleteReq}
    Click Delete
    Wait Until Element Is Visible    ${Module}
    Click Element    ${Module}
    Wait Until Element Is Visible    ${numberRequirement}
    ${numberReq2}=    Get Text    ${numberRequirement}
    Verify Delete Success    ${numberReq1}    ${numberReq2}

Update a Sub Module
    Wait Until Element Is Visible    ${Module2}    ${Timeout15}
    Click Element    ${Module2}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${SubModule}
    Click Element    ${SubModule}
    Wait Until Element Is Visible    ${inputSubModule}
    Click Element    ${inputSubModule}
    Wait Until Element Is Visible    ${inputNameModule}    ${Timeout15}
    Press Key    ${inputNameModule}    ${TextNameSubUp}
    Click Element    ${tabProperties}
    Wait Until Element Is Visible    ${iframeSubModule}    ${Timeout15}
    Select Frame    ${iframeSubModule}
    Input Text    ${subModuleDescription}    ${TextDesSubUp}
    Unselect Frame
    Wait Until Element Is Visible    ${btnSaveSubModule}
    Click Button    ${btnSaveSubModule}
    ${TextSub}    Get Text    ${inputSubModule}
    Should Be True    '${TextSub}'=='${TextNameSubUp}'
    Wait Until Element Is Visible    ${iframeSubModule}
    Frame Should Contain    ${iframeSubModule}    ${TextDesSubUp}

Delete a Sub Module
    Wait Until Element Is Visible    ${Module2}    ${Timeout15}
    Click Element    ${Module2}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub1}=    Get Text    ${numberSubModule}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${selectDelSubModule}    ${Timeout15}
    Click Element    ${selectDelSubModule}
    Open Context Menu    ${selectDelSubModule}
    Click Delete
    Wait Until Element Is Visible    ${Module2}    ${Timeout15}
    Click Element    ${Module2}
    Wait Until Element Is Visible    ${numberSubModule}
    ${numberSub2}=    Get Text    ${numberSubModule}
    Verify Delete Success    ${numberSub1}    ${numberSub2}

*** Keywords ***
