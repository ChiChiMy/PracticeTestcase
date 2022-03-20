*** Settings ***
Test Setup        Login page
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Variables ***
${url}            https://apitryout.qtestnet.com/
${Username}       //input[@id='userName']
${Password}       //input[@id='password']
${btnLogin}       //div[@class='submit']
${tabRequirement}    //span[@widgetid="working-tab_requirementId"]
${btnNewModule}    //span[@id="btnNewModule"]
${NameModule}     //span[@id="moduleHeader_editableContent"]
${Testproject}    //div[@id="requirement-tree-content"]//span[@class="icon icon-root"]//parent::div
${btnReload}      //button[@id="moduleHeader_btnReload"]
${textinputModule}    test1
${btnNewRequirement}    //span[@class="icon-text" and @title="New Requirement"]
${btnNewModule1}    //span[@class="icon-text" and @title="New Module"]
${inputNameModule}    //span[@id="moduleHeader_editableContent"]//following-sibling::input
${inputNameRequirement}    //div[@id="customtitlepaneRequirement_innerEditor"]//span//input
${TextModule}     //span[@class="text" and text()= "test1"]
${TextModule1}    //span[@class="text" and text()= "test"]
${btnPriority}    //div[@id="widget_priorityRequirement_selectNode"]//input[@value="▼ "]
${btnType}        //div[@id="typeRequirement"]//input[@value="▼ "]
${btnAssign}      //div[@id="assignedToRequirement"]//input[@value="▼ "]
${selectPriority}    //div[text()="Should have"]
${selectType}     //div[text()="Functional"]
${SelectAssign}    //div[text()="API qTest Manager"]//preceding-sibling::div/input
#${SelectAssign}    //div[text()="Arpita Jain"]//preceding-sibling::div/input
${inputDiscription}    //iframe[@id="descriptionRequirement_editorNode_ifr"]
${btnSave}        //span[@id="saveBtnRequirement"]
${btnGo}          //button[@id="reloginBtn"]
${btnRemove}      //tr[@data-index="0"]//a[@title="Remove"]
${inputNewModule}    //input[@id="moduleHeader_editableContentInput"]
${tabProperties}    //a[@id="moduleTabView_tab_properties"]
${iframeSubModule}    //div[@class="mce-edit-area mce-container mce-panel mce-stack-layout-item mce-last"]//iframe
${SubModuleDiscription}    //body[@id="tinymce"]
${btnSaveSubModule}    //button[@id="properties_btnSaveAll"]
${selectUpdateRequirement}    //a[@class="ng-star-inserted" and text()="requirement"]
${inputUpdateReq}    //input[@class="dijitReset dijitInputInner" and @value="requirement"]
${btnStatusUp}    //div[@id="widget_statusRequirement_selectNode"]//input[@value="▼ "]
${selectStatusUp}    //div[@class="dijitReset dijitMenuItem" and text()="In Progress"]
${selectTypeUp}    //div[@class="dijitReset dijitMenuItem" and text()="Non-functional"]
${selectPriorityUp}    //div[@class="dijitReset dijitMenuItem" and text()="Must have"]
${selectAssignUp}    //div[text()="Arpita Jain"]//preceding-sibling::div/input
${selectDelReq}    //a[@class="ng-star-inserted" and text()="Requirement"]//ancestor::td//preceding-sibling::td//div[@class="checkbox-icon"]
${btnDeleteReq}    //li[@id="contextMenuGrid-common.delete"]
${nameSubModule}    //span[@class="text" and text()= "test"]
${iconSubModule}    //span[@class="text" and text()= "test"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${SubModule}      //div[@class="children-container removable"]//span[text()="sub module"]
${inputSubModule}    //span[@id="moduleHeader_editableContent" and text()="sub module"]
${iframeReq}      //iframe[@id="descriptionRequirement_editorNode_ifr"]
${inputIframeReq}    //body[@data-id="descriptionRequirement_editorNode"]
${textInputUpReq}    //div[@id="customtitlepaneRequirement_innerEditor"]
${DeleteReq}      //a[@class="ng-star-inserted" and text()="Requirement"]//ancestor::tr
${DialogUnderlay}    //div[@id="confirm_dialog_underlay"]
${btnYes}         //span[@class="dijitReset dijitInline dijitButtonText" and text()="Yes"]
${btnDelete}      //span[@class="icon-text" and @title="Delete"]

*** Test Cases ***
TC1
    #Create a new Requirement
    Delete Requirement    ${TextModule}
    Wait Until Element Is Visible    ${btnNewModule}    15    error
    Click Element    ${btnNewModule}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    test1
    Click Element    ${btnReload}
    Wait Until Element Is Visible    ${TextModule}
    Open Context Menu    ${TextModule}
    Click Element    ${btnNewRequirement}
    Wait Until Element Is Visible    ${inputNameRequirement}    15    error1
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
    Input Text    ${inputIframeReq}    chichi
    Unselect Frame
    Wait Until Element Is Visible    ${btnSave}
    Click Element    ${btnSave}
    Click Element    ${TextModule}

TC2
    #Create a new Sub Module
    Delete Requirement    ${TextModule1}
    Wait Until Element Is Visible    ${btnNewModule}    15    error
    Click Element    ${btnNewModule}
    Wait Until Element Is Visible    ${inputNameModule}
    Press Key    ${inputNameModule}    test
    Click Element    ${btnReload}
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

TC3
    #Update a requirement
    Wait Until Element Is Visible    ${TextModule}    15
    Click Element    ${TextModule}
    Wait Until Element Is Visible    ${selectUpdateRequirement}    15
    Click Element    ${selectUpdateRequirement}
    Wait Until Element Is Visible    ${textInputUpReq}    15
    Click Element    ${textInputUpReq}
    Wait Until Element Is Visible    ${inputUpdateReq}    10
    Press Key    ${inputUpdateReq}    Requirement
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
    Input Text    ${inputIframeReq}    chichichichi
    Unselect Frame
    Wait Until Element Is Visible    ${btnSave}
    Click Element    ${btnSave}

TC4
    #Delete a requirement
    Wait Until Element Is Visible    ${TextModule}    15
    Click Element    ${TextModule}
    Wait Until Element Is Visible    ${selectDelReq}    60
    Click Element    ${selectDelReq}
    Open Context Menu    ${DeleteReq}
    Wait Until Element Is Visible    ${btnDeleteReq}
    Click Element    ${btnDeleteReq}
    Wait Until Element Is Visible    ${DialogUnderlay}
    Click Element    ${btnYes}

TC5
    #Update a Sub Module
    Wait Until Element Is Visible    ${nameSubModule}    15
    Click Element    ${nameSubModule}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${SubModule}
    Click Element    ${SubModule}
    Wait Until Element Is Visible    ${inputSubModule}
    #Click Element    ${inputSubModule}
    Press Key    ${inputSubModule}    Sub module
    Click Element    ${tabProperties}
    Wait Until Element Is Visible    ${iframeSubModule}    15
    Select Frame    ${iframeSubModule}
    Input Text    ${SubModuleDiscription}    Sub module
    Unselect Frame
    Wait Until Element Is Visible    ${btnSaveSubModule}
    Click Button    ${btnSaveSubModule}

TC6
    #Delete a Sub Module
    Wait Until Element Is Visible    ${nameSubModule}    15
    Click Element    ${nameSubModule}
    ${icon}    Run Keyword And Return Status    Element Should Be Visible    ${iconSubModule}
    Run Keyword If    ${icon}    Click Element    ${iconSubModule}
    Wait Until Element Is Visible    ${SubModule}
    Click Element    ${SubModule}
    Open Context Menu    ${SubModule}
    Wait Until Element Is Visible    ${btnDelete}
    Click Element    ${btnDelete}
    Wait Until Element Is Visible    ${DialogUnderlay}
    Click Element    ${btnYes}

*** Keywords ***
Login page
    Set Selenium Speed    0.5
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Input Text    ${Username}    api-test@qasymphony.com
    Input Password    ${Password}    admin123
    Click Element    ${btnLogin}
    ${display}    Run Keyword And Return Status    Element Should Be Visible    //body[@class="modal-open"]
    Run Keyword If    ${display}    Continue Login
    Wait Until Element Is Visible    ${tabRequirement}    60
    Click Element    ${tabRequirement}
    #Sleep    5
    Wait Until Element Is Visible    ${Testproject}    15    chichihcih
    Click Element    ${Testproject}

Continue Login
    Wait Until Element Is Visible    ${btnRemove}
    Click Element    ${btnRemove}
    Click Element    ${btnGo}

Delete Requirement
    [Arguments]    ${arg}
    @{list}=    Get WebElements    ${arg}
    FOR    ${i}    IN    @{list}
        Wait Until Element Is Visible    ${i}    60    hhhh
        #Wait Until Keyword Succeeds    10    5    Click Element    ${i}
        Open Context Menu    ${i}
        Wait Until Element Is Visible    ${btnDelete}
        Click Element    ${btnDelete}
        Wait Until Element Is Visible    ${DialogUnderlay}
        Click Element    ${btnYes}
    END
