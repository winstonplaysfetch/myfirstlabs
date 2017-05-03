Feature: Login to my website
  
    As an administrator, I should be able to login to myfirstlabs. 
    
    Scenario: As an administrator I can login. 
        Given "jennyndaly@gmail.com" is logged in
        And I am on "PROJECT LIST" page
        Then I should see the "New Project" link
