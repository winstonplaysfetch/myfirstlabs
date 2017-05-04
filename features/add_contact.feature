Feature: Send a message
  
  As a guest user I should be able to send a message to the staff of the website
  so that they can get back to me with answers to my questions and provide useful
  comments to the website staff
  
  Scenario: As a guest user I want to be able to get from the homepage to the contact form
    Given I am on the homepage
    When I click on the "Contact" link
    Then I should be on the "Contact" page
    And I should see the "contact[email]" field
    And I should see the "contact[body]" field