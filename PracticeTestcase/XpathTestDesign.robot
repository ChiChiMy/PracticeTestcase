*** Variables ***
#Variable test design
${textNameModuleDes}    Test Design
${textNameTestCase}    test case
${textnameUpTC}    New Test Case
${textDescription}    Description
${textDescriptionUp}    Test Case description
${textStatusTC}    In Progress
${textTypeTC}     Automation
${textPriorityTC}    High
${textStatusUpTC}    Ready For Baseline
${textTypeUpTC}    Performance
${textPriorityUpTC}    Low
${textprecodition}    User has logged
${textstep1}      input user
${textstep2}      click button
${textstep1Up}    Input name
${textstep2Up}    Click Save Button
${expected}       Save success
#XPATH
${nameModule}     //testdesign-project-module//span[@id="moduleHeader_editableContent"]
${tabDesign}      //span[@id="working-tab_test-design_label"]
${nameTestCase}    //div[@class="editable-content"]
${testDesignProject}    //div[@id="test-design-tree-container"]//span[@class="icon icon-root"]//parent::div
${moduleDesign}    //div[@id="test-design-tree-container"]//span[@class="text" and text()= "Test Design"]
${textcaseButton}    //span[@class="icon-text" and @title="New Test Case"]
${newModuleButton}    //span[@id="tbtestdesignNewModule"]
${testcaseInput}    //input[@id="testCaseHeader_editableContentInput"]
${designReloadButton}    //div[@id="testcaseContentPane"]//button[@id="moduleHeader_btnReload"]
${statusTextBox}    //label[text()="Status"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectStatus}    //ul[@role="listbox"]//li[text()="In Progress"]
${selectStatusTC}    //label[text()="Status"]//following-sibling::span[@class="property-value"]//select
${typeTextBox}    //label[text()="Type"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectType}     //ul[@role="listbox"]//li[text()="Automation"]
${selectTypeTC}    //label[text()="Type"]//following-sibling::span[@class="property-value"]//select
${assignToTextBox}    //label[text()="Assigned To"]//following-sibling::span[@class="property-value"]
${selectAssign}    //ul[@id="undefined_itemList"]//li[@id="undefined_listItem_aPIQTestManager"]
${doneButton}     //button[@id="undefined_doneBtn"]
${iframeTC}       //div[@class="mce-tinymce mce-container mce-panel"]//iframe
${inputIframeTC}    //body[@id="tinymce"]
${priorityTextBox}    //label[text()="Priority"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectpriority}    //ul[@role="listbox"]//li[text()="High"]
${selectpriorityTC}    //label[text()="Priority"]//following-sibling::span[@class="property-value"]//select
${checkboxTesting}    //property[@id="testcase_properties_DefaultField_Testing"]//input
${preTestStep}    //div[@class="precondition clearfix richtext-editor ng-star-inserted"]
${testStepInput}    //div[@class="note-editable card-block"]
${step_1Description}    //p[text()="${textstep1}"]//parent::div
${step_2Description}    //p[text()="${textstep2}"]//parent::div
${step_1UpDescription}    //div[ text()="Input name"]
${step_2UpDescription}    //div[ text()="Click Save Button"]
${addButton}      //tr[@class="custom-action ng-star-inserted"]//button
${selectExpected}    //div[@class="note-editable card-block"]//ancestor::td//following-sibling::td//div[@class="richtext-editor clearfix ng-star-inserted"]
${saveTCButton}    //button[@id="testDesign_btnSaveAll"]
${numberSubModuleDes}    //div[@class="info-content info-content-fluid"]//div[text()="Sub Modules"]//preceding-sibling::p/span
${numberTestCaseDes}    //div[@class="info-content info-content-fluid"]//div[text()="Test Cases"]//preceding-sibling::p/span
${iconTestCase}    //div[@id="test-design-tree-container"]//span[@class="text" and text()= "Test Design"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${selectDelTestCase}    //div[@class="children-container removable"]//span[text()="test case"]
${selectUpTestCase}    //div[@class="children-container removable"]//span[text()="test case"]
${selectUpStatusTC}    //ul[@role="listbox"]//li[text()="Ready For Baseline"]
${statusUp}       //label[text()="Status"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectUpTypeTC}    //ul[@role="listbox"]//li[text()="Performance"]
${typeUp}         //label[text()="Type"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${SelectDemoUser}    //ul[@id="undefined_itemList"]//li[@id="undefined_listItem_demoUser"][1]
${clearAllButton}    //button[@id="undefined_clearAll"]
${selectUppriorityTC}    //ul[@role="listbox"]//li[text()="Medium"]
${priorityUp}     //label[text()="Priority"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectAllButton}    //button[@id="undefined_selectAll"]
${imgDemoUser}    //img[@title="Demo User"]
${imgAPI}         //img[@title="API qTest Manager"]
