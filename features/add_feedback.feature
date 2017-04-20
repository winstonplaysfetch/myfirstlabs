Feature: Add a feedback
  
  As a user
  So that I can leave feedback
  
Scenario: As a user I want to be able to leave feedback to the creator
  Given I am on the home page
  When I click on the "Enter My First Labs" link
  Then I should be on the "PROJECT LIST" page
  When I click on the "Show" link
  Then I should be on the "Projects" page
  And I should see "Commenter" field
  And I should see "Title" field 
  And I should see "Body" field
  