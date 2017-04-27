Feature: Add a new project entry
  
  As an administrator, I need to be able to add contacts
  
  Scenario: As an administrator I need to be able to navigate from the homepage to the contacts pagesc
    Given I am on the contacts page
    When I click on "Back" link
    Then I should see "PROJECT LIST"
   
