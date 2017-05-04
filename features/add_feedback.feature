Feature: Submit Feedback
  
  As a guest user I should be able to submit feedback on projects which the staff
  of the website would approve. Feedback can be useful information for other guest
  users to know which is already not present on the website regarding projects
  
  Scenario: As a guest user I want to be able to get from the homepage to the feedback form for a project
    Given I am on the homepage
    And There is a project already created by an admin called "Robot" with the description "This is an andriod!"
    When I click on the "Projects" link
    Then I should be on the "PROJECT LIST" page
    And I should see the "Robot" link
    Then I click on the "Robot" link
    Then I should be on the "Robot" page
    And I should see the "feedback[commenter]" field
    And I should see the "feedback[title]" field
    And I should see the "feedback[body]" field
