Feature: User can edit information

Scenario: Edit Profile
          Given a logged in user
          When I follow "Edit Profile"
          Then I should be on the Edit Users page
          When I edit the data
          And I fill in the following:
          |First name|krupa|
          |Last name|Patel|
          |Username|krupapatel|
          |Email|krupa@gmail.com|
          And I press "Update User" 
          Then I should be on the users page 
          And I should see "User was successfully updated"
          
                     
