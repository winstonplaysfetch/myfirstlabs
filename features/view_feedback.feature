Feature: View Feedback

  As a guest user I should be able to view admin approved feedback on projects
  
  Scenario: As a guest user I want to be able to get from the homepage to view various project feedback
    Given I am on the homepage
    And There is a project already created by an admin called "Robot" with the description "This is an andriod!"
    And This Feedback is in the database: "1", "John Doe", "Fun Bot", "What a fun robot!", and "true"
    And This Feedback is in the database: "1", "", "Nice Bot", "This is a good bot.", and "true"
    And This Feedback is in the database: "1", "Matt Paul", "Broken Bot", "It came broken!!!", and "false"
    Then I should see the "Projects" link
    When I click on the "Projects" link
    Then I should be on the "Available Project Kits" page
    And I should see the "Robot" link
    Then I click on the "Robot" link
    And I should be on the "Robot" page
    And I should see user "John Doe" feedback
    And I should see user "Anonymous" feedback
    But I should not see user "Matt Paul" feedback