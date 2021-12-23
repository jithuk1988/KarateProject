Feature: GET API with query parameter
  Scenario: Verify all the users with status equal to active
    * def query = {status:'active'}
    Given url apiURL+'/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: Verify all the users with status equal to active and gender is female
    * def query = {status:'active',gender:'female'}
    Given url apiURL+'/public/v1/users'
    And params query
    When method GET
    Then status 200
    * def jsonResponse = response
    * print jsonResponse
    * def userCount = jsonResponse.data.length
    * print 'Total users: '+userCount
    * match userCount == 20