Feature: Update User Details using put method
 
@execute
Scenario: Update an existing passenger details
  Given url baseURL
  And path 'users/2'
  And param page = 2
  And request read('UserPayload.json')
  When method PUT
  Then status 200