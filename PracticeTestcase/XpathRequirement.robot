*** Variables ***
${textNameModule}    test
${textNameModule2}    testSub
${textNameRequirement}    requirement
${textNameRequirementUp}    Update requirement
${textNameRequirementDel}    Delete requirement
${textDescriptionReq}    description
${textNameSubModule}    sub module
${textNameSubModuleUp}    Update sub module
${textNameSubModuleDel}    Delete sub module
${textDescriptionSM}    sub module
${textNameSubModuleUp1}    Sub Module
${textDescriptionSMUp}    Sub module description
${textRequirementUp}    Requirements
${textDescriptionReqUp}    requirement description
${textStatus}     In Progress
${textPriority}    Must have
${textType}       Non-functional
${textAssign}     Demo User
# XPATH
${tabRequirement}    //span[@widgetid="working-tab_requirementId"]
${newModuleButton}    //span[@id="btnNewModule"]
${nameProject}    //div[@id="requirement-tree-content"]//span[@class="icon icon-root"]//parent::div
${reloadButton}    //button[@id="moduleHeader_btnReload"]
${newRequirementButton}    //span[@class="icon-text" and @title="New Requirement"]
${newSubModuleButton}    //span[@class="icon-text" and @title="New Module"]
${nameModuleInput}    //span[@id="moduleHeader_editableContent"]//following-sibling::input
${nameRequirementInput}    //div[@id="customtitlepaneRequirement_innerEditor"]//span//input
${module}         //div[@id="requirement-tree-container"]//span[@class="text" and text()= "test"]
${statusButton}    //div[@id="widget_statusRequirement_selectNode"]//input[@value="▼ "]
${priorityButton}    //div[@id="widget_priorityRequirement_selectNode"]//input[@value="▼ "]
${typeButton}     //div[@id="typeRequirement"]//input[@value="▼ "]
${assignButton}    //div[@id="assignedToRequirement"]//input[@value="▼ "]
${selectPriority}    //div[text()="Should have"]
${selectType}     //div[text()="Functional"]
${selectAssign}    //div[text()="API qTest Manager"]//preceding-sibling::div/input
${descriptionReqIframe}    //iframe[@id="descriptionRequirement_editorNode_ifr"]
${saveButton}     //span[@id="saveBtnRequirement"]
${tabProperties}    //a[@id="moduleTabView_tab_properties"]
${iframeSubModule}    //div[@class="mce-edit-area mce-container mce-panel mce-stack-layout-item mce-last"]//iframe
${descriptionSMInput}    //body[@id="tinymce"]
${saveSMButton}    //button[@id="properties_btnSaveAll"]
${selectRequirementUp}    //a[@class="ng-star-inserted" and text()="${textNameRequirementUp}"]
${selectRequirement}    //a[@class="ng-star-inserted" and text()="requirement"]
${selectStatusUp}    //div[@class="dijitReset dijitMenuItem" and text()="In Progress"]
${selectTypeUp}    //div[@class="dijitReset dijitMenuItem" and text()="Non-functional"]
${selectPriorityUp}    //div[@class="dijitReset dijitMenuItem" and text()="Must have"]
${clearAllButton}    //label[text()="Clear all"]
${selectAssignUP}    //div[@class="dijitReset dojoxMultiSelectItem"][2]//div[text()="Demo User"]//preceding-sibling::div/input
${selectDeleteReq}    //div[@class="children-container removable"]//span[text()="requirement"]
${iconSubModule}    //span[@class="text" and text()= "test"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${selectSubModuleUp}    //div[@class="children-container removable"]//span[text()="sub module"]
${nameSMLocator}    //span[@id="moduleHeader_editableContent"]
${descriptionReqInput}    //body[@data-id="descriptionRequirement_editorNode"]
${nameReqUpLocator}    //div[@id="customtitlepaneRequirement_innerEditor"]
${numberRequirement}    //div[@class="info-content"]//div[text()="Requirements"]//preceding-sibling::p/span
${numberSubModule}    //div[@class="info-content"]//div[text()="Sub Modules"]//preceding-sibling::p/span
${selectSubModuleDel}    //div[@class="children-container removable"]//span[text()="sub module"]
${iconRequirement}    //span[@class="text" and text()= "test"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${statusInput}    //input[@id="statusRequirement_selectNode"]
${priorityInput}    //input[@id="priorityRequirement_selectNode"]
${typeInput}      //input[@id="typeRequirement_selectNode"]
${assignInput}    //input[@name="assignTo"]
