Feature: User can add new cookbook

Scenario: New Cookbook
          Given a logged in user
          When I follow "New Cookbook"
          Then I should be on the New Cookbook page
          When I add a new cookbook
          And I fill in the following:
          |Title|Oatmeal|
          |Servings|2|
          |Preptime|10 minutes|
          |Cooktime|5 minutes|
          |Ingredients|Instant oats|
          |Directions|Cook it|
          And I press "Create Cookbook"
          Then I should be on the View New Coookbook page
          And I should see "Cookbook was successfully created"
           
