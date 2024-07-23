Feature: Request Responce-Get feature

  @execute
  Scenario: Get list users
    Given url baseURL
    And path 'users'
    And param page = 2
    When method GET
    Then status 200

  @execute
  Scenario: Get single user details
    Given url baseURL
    And path 'users/2'
    When method GET
    Then status 200

  @execute
  Scenario: Get single user not found
    Given url baseURL
    And path 'users/23'
    When method GET
    Then status 404

  @execute
  Scenario: Get list resourse
    Given url baseURL
    And path 'unknown'
    When method GET
    Then status 200

  @execute
  Scenario: Get single resourse not found 
    Given url baseURL
    And path 'unknown/2'
    When method GET
    Then status 200
    
    @execute
  Scenario: Get single resuorse
    Given url baseURL
    And path 'unknown/23'
    When method GET
    Then status 404
    

  @execute
  Scenario: Get delay response
    Given url baseURL
    And path 'users'
    And param delay = 3
    When method GET
    Then status 200
