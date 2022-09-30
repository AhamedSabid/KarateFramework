Feature: Authorize 

Scenario: Go rest site POST method - Create User
Given url 'https://gorest.co.in'
* header Content-Type = 'application/json'
* header Authorization = 'Bearer a855c4c3471817eb411597d601ec28369cbc14c60d64be2cfb13c107ecc669ad'
And path '/public/v2/users'
And def requestJson = read('createUSerPOST.json')
* requestJson.email = "new12345@gmail.com"
* request requestJson
When method POST
Then status 201
And print response
* def ExpectedSchema = read('usersJsonSchema.json')
Then match response == ExpectedSchema