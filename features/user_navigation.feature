Feature: Navigate website
  
  As a guest user I should be able to find my way through the website without
  having access to admin only content.
  
  Scenario: As a guest user I want to be able to get from the homepage and move throughout the website
    Given I am on the homepage
    And There is a project already created by an admin called "Robot" with the description "This is an andriod!"
    Then I should see the "Home" link
    And I should see the "Projects" link
    And I should see the "Contact" link
    And I should see the "Staff Login" link
    But I should not see the "Feedback" link
    And I should not see the "Signout" link
    When I click on the "Projects" link
    Then I should be on the "Project List" page
    And I should see the "Robot" link
    But I should not see the "New Project" link
    Then I click on the "Robot" link
    And I should be on the "Robot" page
    Then I click on the "Home" link
    And I am on the homepage
    Then I click on the "Contact" link
    And I should be on the "Contact Page" page
    And I should see the "Back to Projects" link
    Then I click on the "Back to Projects" link
    And I should be on the "Project List" page
    Then I click on the "Robot" link
    And I should be on the "Robot" page
    And I should see the "Back to Projects" link
    Then I click on the "Back to Projects" link
    And I should be on the "Project List" page