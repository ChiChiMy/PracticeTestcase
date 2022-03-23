*** Variables ***
${ModalSession}    //body[@class="modal-open"]
${NotifyError}    error
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
${inputSubModule}    //span[@id="moduleHeader_editableContent"]
${iframeReq}      //iframe[@id="descriptionRequirement_editorNode_ifr"]
${inputIframeReq}    //body[@data-id="descriptionRequirement_editorNode"]
${textInputUpReq}    //div[@id="customtitlepaneRequirement_innerEditor"]
${DeleteReq}      //a[@class="ng-star-inserted" and text()="Requirement"]//ancestor::tr
${DialogUnderlay}    //div[@id="confirm_dialog_underlay"]
${btnYes}         //span[@class="dijitReset dijitInline dijitButtonText" and text()="Yes"]
${btnDelete}      //span[@class="icon-text" and @title="Delete"]
${CountRequirement}    //div[@class="info-content"]//div[text()="Requirements"]//preceding-sibling::p/span
${CountSubModule}    //div[@class="info-content"]//div[text()="Sub Modules"]//preceding-sibling::p/span
${TextNameInputUp}    Requirement
${SelectDelSubModule}    //div[@class="children-container removable"]//span[text()="Sub module"]
${inputDelSubModule}    //span[@id="moduleHeader_editableContent" and text()="Sub module"]
