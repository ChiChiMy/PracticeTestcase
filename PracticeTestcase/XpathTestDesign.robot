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
${textPriorityUpTC}    Medium
${textprecodition}    precodition
${textstep1}      Input name
${textstep2}      click button
${textstep1Up}    Input name user
${textstep2Up}    Click Save Button
${expected2}      Save success
#XPATH
${nameModule1}    //testdesign-project-module//span[@id="moduleHeader_editableContent"]
${tabDesign}      //span[@id="working-tab_test-design_label"]
${nameTestCase}    //div[@class="editable-content"]
${testDesignProject}    //div[@id="test-design-tree-container"]//span[@class="icon icon-root"]//parent::div
${moduleDesign}    //div[@id="test-design-tree-container"]//span[@class="text" and text()= "Test Design"]
${textcaseButton}    //span[@class="icon-text" and @title="New Test Case"]
${desNewModuleButton}    //span[@id="tbtestdesignNewModule"]
${inputTestCase}    //input[@id="testCaseHeader_editableContentInput"]
${designReloadButton}    //div[@id="testcaseContentPane"]//button[@id="moduleHeader_btnReload"]
${status}         //label[text()="Status"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectStatusTC}    //ul[@role="listbox"]//li[text()="In Progress"]
${selectStatusTC1}    //label[text()="Status"]//following-sibling::span[@class="property-value"]//select
${type}           //label[text()="Type"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectTypeTC}    //ul[@role="listbox"]//li[text()="Automation"]
${selectTypeTC1}    //label[text()="Type"]//following-sibling::span[@class="property-value"]//select
${assignTo}       //label[text()="Assigned To"]//following-sibling::span[@class="property-value"]
${selectAssignTC}    //ul[@id="undefined_itemList"]//li[@id="undefined_listItem_aPIQTestManager"]
${doneButton}     //button[@id="undefined_doneBtn"]
${iframeTC}       //div[@class="mce-tinymce mce-container mce-panel"]//iframe
${inputIframeTC}    //body[@id="tinymce"]
${priority}       //label[text()="Priority"]//following-sibling::span[@class="property-value"]//span[@role="textbox"]
${selectpriorityTC}    //ul[@role="listbox"]//li[text()="High"]
${selectpriorityTC1}    //label[text()="Priority"]//following-sibling::span[@class="property-value"]//select
${checkboxTesting}    //property[@id="testcase_properties_DefaultField_Testing"]//input
${preTestStep}    //div[@class="precondition clearfix richtext-editor ng-star-inserted"]
${inputTestStep}    //div[@class="note-editable card-block"]
${step1}          //p[text()="${textstep1}"]//parent::div
${step2}          //p[text()="${textstep2}"]//parent::div
${step1Up}        //div[ text()="Input name"]
${step2Up}        //div[ text()="Click Save Button"]
${addButton}      //tr[@class="custom-action ng-star-inserted"]//button
${selectExpected}    //div[@class="note-editable card-block"]//ancestor::td//following-sibling::td//div[@class="richtext-editor clearfix ng-star-inserted"]
${saveTCButton}    //button[@id="testDesign_btnSaveAll"]
${numberSubModuleDes}    //div[@class="info-content info-content-fluid"]//div[text()="Sub Modules"]//preceding-sibling::p/span
${numberTestCaseDes}    //div[@class="info-content info-content-fluid"]//div[text()="Test Cases"]//preceding-sibling::p/span
${iconTestCase}    //div[@id="test-design-tree-container"]//span[@class="text" and text()= "Test Design"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${selectDelTestCase}    //div[@class="children-container removable"]//span[text()="New Test Case"]
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
