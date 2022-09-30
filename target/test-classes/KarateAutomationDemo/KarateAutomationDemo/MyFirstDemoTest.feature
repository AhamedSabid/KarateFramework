Feature: Automate Login Demo site

Scenario: Veirfy the login
Given driver "https://demosite.executeautomation.com/Login.html"
* driver.maximize()
Then input("//input[@name='UserName']","Ahamed")
Then input("//input[@name='Password']","12345")
And click("//input[@name='Login']")
When delay(5000)
And match text("//h2") == "User Form"
And screenshot("//h2")


