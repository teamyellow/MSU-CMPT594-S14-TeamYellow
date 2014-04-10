Feature: User can Log In

Scenario: Login
  Given a valid user
  When I go to the log in page
  And I fill in the following:
    |username|minikermit|
    |pwd|12345678|
  And I press "Login"
  Then I should see "welcome to cookbook"