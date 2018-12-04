Feature: User can sign up

    As a Visitor
    In order to use the site functionality
    I want sign up and log in

    Background: 
        Given the following user exists
        |email          | password | password_confirmation |
        |real@email.com | password | password              |
        And I visit the page
        And I click 'Registration'

    Scenario: When I fill in the sign up form correctly, I can sign up
        When I fill in 'Name' field with 'Donald Trump'
        And I fill in 'Email' field with 'realdonald@white.gov'
        And I fill in 'Password' field with 'idontwannadatemydaughter'
        And I fill in 'Password confirmation' field with 'idontwannadatemydaughter'
        And I click 'Sign up'
        Then I should see 'Hello, Donald Trump'
    
    Scenario: When I don't fill in the sign up form I get error messages
        When I click 'Sign up'
        Then I should see "Email can't be blank"
        And I should see "Password can't be blank"
        And I should see "Name can't be blank"

    Scenario: When Password and Password confirmation doesn't match I get error message
        When I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'pasword'
        And I click 'Sign up'
        Then I should see "Password confirmation doesn't match Password"

    Scenario: When Email is taken I get error message
        When I fill in 'Email' field with 'real@email.com'
        And I click 'Sign up'
        Then I should see "Email has already been taken"