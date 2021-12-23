Feature: GET API Feature
  Scenario: To check the get API Response of User details
    Given url apiURL+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
  Scenario: To check the get API Response of User details error message
    Given url apiURL+'/public/v1/users'
    And path '1'
    When method GET
    Then status 404
#  Scenario: To check the get API Response of error case
#    Given url apiURL+'/public/v1/users'
#    And path '1'
#    When method GET
#    Then status 200
  Scenario: Get API Response store in variable
    Given url apiURL+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def actualName = jsonResponse.data.name
    * def actualGender = jsonResponse.data.gender
    * match actualName == 'Tatev'
    * match actualGender == 'male'
