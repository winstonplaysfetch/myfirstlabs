Feature: Add a new project entry
  
  As an administrator, I need to be able to add new projects
  and delete new projects to keep up to date.
  
  Scenario: As an administrator I need to be able to navigate from the homepage to the project pages
    Given I am on the homepage
    When I click on "Enter My First Labs" link
    Then I should be on "Projects" page
    When I click on "New"
    Then I should be on "New Project" page
    And I should see the "name" field
    And I should see the "description" field
    And I should see the "image" field
    And I should see the "video" field