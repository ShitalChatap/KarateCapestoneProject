Feature: Testing DELETE Method for Users API
 
@execute
Scenario: Delete airline by ID
    Given url baseURL
    And path 'users/2'
    When method DELETE
    Then status 204
    