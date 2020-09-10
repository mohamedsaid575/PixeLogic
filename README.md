1. Download Python
2. Download Pycharm
3. Create new Project and select Python interpreter on your machine (not new Venv)
Install the following Libraries:
  1. Selenium
  2. Robotframework-SeleniumLibrary
  3. RequestsLibrary
  4. Robot Framework
Then install the following plugins:
  1. Robotframework support
  2. Run Robotframework
  3. Intellibot patched SeleniumLibrary
  
Test Automation Framework Project for Robot Framework which contains the following layers:
1- Resources
2- Results 
3- Tests

Resources / Tests Folders Contains:
1- POM (Page Object Model) Which contains Keywords for each and every element will be used in Page, Each Keyword usually should contain Action for the Element like "Click, Input, Select, ..etc"
2- "CommonWeb" Start and Open browser, Begin/End Test, Locator Identifier using TIMEOUT of Selenium Library
3- "PixeLogicApp" Keywords Which contains Keyword for each Step details needed combined in One Keword.
4- "PixeLogic" contains Test Cases calling Kewords of Keyword level which contains:
    Test Case Title Which should matches Test Case Titles
    [Tags] Which could contains Test Case Tags, IDs in Test Management Tools as well as Smoke-Test, Functionality, ..etc
    [Arguments] Which contains Test Arguments as a Parameters to pass Test Data
    Test Steps Which calls Keword Name Levels
    
Results Folder Contains:
1- Report
2- Logs
3- Output
4- ScreenShots
    
For Execution use following Command
    robot -d results tests/PixeLogic.robot
