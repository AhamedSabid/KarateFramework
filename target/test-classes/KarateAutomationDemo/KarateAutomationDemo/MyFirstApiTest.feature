Feature: Automate Reqres Api methods

Scenario: Verify Single user Api
Given url 'https://reqres.in'
When path '/api/users/2'
Then method GET
And status 200
And print response
And match response.data.id == 2
* match response == read('GetApiSchema.json')

Scenario: Verify user creation POST method
Given url 'https://reqres.in'
When path '/api/users'
* def reqjos = read('createUserPayload.json')
* reqjos.name= 'abcd'
* print reqjos
Then method POST
And status 201
And print response
* match response == read('UserSchema.json')


Scenario Outline: Verify user creation POST method with multiple test data
Given url 'https://reqres.in'
When path '/api/users'
* def reqjson = read('createUserPayload.json')
* reqjson.name= '<name>'
* reqjson.job= '<job>'
* print reqjson
* request reqjson
Then method POST
And status 201
And print response
* match response == read('UserSchema.json')
Examples:
|name   |job|
|Ahamed |SDET|
|Sabid  |QA  |
|Shijith|SDET|








