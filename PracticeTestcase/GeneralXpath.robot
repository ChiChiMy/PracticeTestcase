*** Variables ***
${browser}        Chrome
${Username}       api-test@qasymphony.com
${Password}       admin123
${Timeout60}      60
${Timeout15}      15
${Timeout10}      10
${NotifyError}    error
${SeleniumSpeed}    0.4
${TextNameModule}    test
${TextNameModule2}    testSub
${TextNameRequirement}    requirement
${TextDesRequirement}    description
${TextNameSub}    sub module
${TextDesSub}     sub module
${TextNameSubUp}    Sub Module
${TextDesSubUp}    Sub module description
${TextReqUp}      Requirements
${TextDesReqUp}    requirement description
${TextStatus}     In Progress
${TextPriority}    Must have
${TextType}       Non-functional
${TextAssign}     Demo User
# XPATH
${ModalSession}    //body[@class="modal-open"]
${url}            https://apitryout.qtestnet.com/
${usernameInput}    //input[@id='userName']
${passwordInput}    //input[@id='password']
${btnLogin}       //div[@class='submit']
${tabRequirement}    //span[@widgetid="working-tab_requirementId"]
${NameModule}     //span[@id="moduleHeader_editableContent"]
${newModuleButton}    //span[@id="btnNewModule"]
${Testproject}    //div[@id="requirement-tree-content"]//span[@class="icon icon-root"]//parent::div
${reloadButton}    //button[@id="moduleHeader_btnReload"]
${newReqButton}    //span[@class="icon-text" and @title="New Requirement"]
${btnNewSubModule}    //span[@class="icon-text" and @title="New Module"]
${inputNameModule}    //span[@id="moduleHeader_editableContent"]//following-sibling::input
${inputNameRequirement}    //div[@id="customtitlepaneRequirement_innerEditor"]//span//input
${Module}         //div[@id="requirement-tree-container"]//span[@class="text" and text()= "test"]
${Module2}        //div[@id="requirement-tree-container"]//span[@class="text" and text()= "testSub"]
${btnPriority}    //div[@id="widget_priorityRequirement_selectNode"]//input[@value="▼ "]
${btnType}        //div[@id="typeRequirement"]//input[@value="▼ "]
${btnAssign}      //div[@id="assignedToRequirement"]//input[@value="▼ "]
${selectPriority}    //div[text()="Should have"]
${selectType}     //div[text()="Functional"]
${selectAssign}    //div[text()="API qTest Manager"]//preceding-sibling::div/input
${inputDescription}    //iframe[@id="descriptionRequirement_editorNode_ifr"]
${btnSave}        //span[@id="saveBtnRequirement"]
${btnGo}          //button[@id="reloginBtn"]
${btnRemove}      //tr[@data-index="0"]//a[@title="Remove"]
${inputNewModule}    //input[@id="moduleHeader_editableContentInput"]
${tabProperties}    //a[@id="moduleTabView_tab_properties"]
${iframeSubModule}    //div[@class="mce-edit-area mce-container mce-panel mce-stack-layout-item mce-last"]//iframe
${subModuleDescription}    //body[@id="tinymce"]
${btnSaveSubModule}    //button[@id="properties_btnSaveAll"]
${selectUpdateRequirement}    //a[@class="ng-star-inserted" and text()="requirement"]
${inputUpdateReq}    //input[@class="dijitReset dijitInputInner" and @value="requirement"]
${btnStatusUp}    //div[@id="widget_statusRequirement_selectNode"]//input[@value="▼ "]
${selectStatusUp}    //div[@class="dijitReset dijitMenuItem" and text()="In Progress"]
${selectTypeUp}    //div[@class="dijitReset dijitMenuItem" and text()="Non-functional"]
${selectPriorityUp}    //div[@class="dijitReset dijitMenuItem" and text()="Must have"]
#${selectAssignUp}    //label[@class="select-action-label" and text()="Select all"]
${clearAllBtn}		//label[text()="Clear all"]
${selectAssignUP}	//div[@class="dijitReset dojoxMultiSelectItem"][2]//div[text()="Demo User"]//preceding-sibling::div/input
${selectDeleteReq}    //div[@class="children-container removable"]//span[text()="Requirements"]
${btnDeleteReq}    //li[@id="contextMenuGrid-common.delete"]
${iconSubModule}    //span[@class="text" and text()= "testSub"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${SubModule}      //div[@class="children-container removable"]//span[text()="sub module"]
${inputSubModule}    //span[@id="moduleHeader_editableContent"]
${iframeReq}      //iframe[@id="descriptionRequirement_editorNode_ifr"]
${inputIframeReq}    //body[@data-id="descriptionRequirement_editorNode"]
${textInputUpReq}    //div[@id="customtitlepaneRequirement_innerEditor"]
${DialogUnderlay}    //div[@id="confirm_dialog_underlay"]
${btnYes}         //span[@class="dijitReset dijitInline dijitButtonText" and text()="Yes"]
${btnDelete}      //span[@class="icon-text" and @title="Delete"]
${numberRequirement}    //div[@class="info-content"]//div[text()="Requirements"]//preceding-sibling::p/span
${numberSubModule}    //div[@class="info-content"]//div[text()="Sub Modules"]//preceding-sibling::p/span
${selectDelSubModule}    //div[@class="children-container removable"]//span[text()="Sub Module"]
${inputDelSubModule}    //span[@id="moduleHeader_editableContent" and text()="Sub Module"]
${iconRequirement}    //span[@class="text" and text()= "test"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${StatusInput}    //input[@id="statusRequirement_selectNode"]
${PriorityInput}    //input[@id="priorityRequirement_selectNode"]
${TypeInput}      //input[@id="typeRequirement_selectNode"]
${AssignInput}    //input[@name="assignTo"]
