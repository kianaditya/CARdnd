Feature: User can update his profile

    As a user
    In order to share more information about myself
    I want to be able to create my profile on the site

    Background: 
        Given the following user exists
        | email          | password | password_confirmation |
        | real@email.com | password | password              |
        And I visit the landing page
        And I am logged in as "real@email.com"

    Scenario: Scenario name