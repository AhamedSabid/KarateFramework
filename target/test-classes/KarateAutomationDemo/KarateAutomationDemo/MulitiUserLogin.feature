Feature: Multi user login

Background:
 * call read 'ObjectRepo.json'
Scenario Outline: Login with credentials '<Username>' '<Password>'
Given driver 'https://demosite.executeautomation.com/Login.html'
* driver.maximize()
Then input(LoginPage.UserName,'<Username>')
Then input(LoginPage.Password,'<Password>')
And click(LoginPage.SubmitBtn)
When delay(5000)
And match text("//h2") == "User Form"
And screenshot("//h2")
And select("//select[@id='TitleId']",'{^}Mr.')

Examples:
|read('TestData.csv')|