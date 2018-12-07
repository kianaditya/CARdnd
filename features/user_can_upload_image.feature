Feature: User can upload image

    As a user
    In order to rent a car
    I want to be able to add and see pictures about the cars

    Background: 
        Given the following user exists
            | email          |
            | real@mail.com |
        And I am logged in as 'real@mail.com'
        And I click "View Profile"
        And I click "Add Car"

    Scenario: User can successfully upload image into car card
        Given I fill in "Brand" field with "Volvo"
        And I fill in "Model" field with "V60"
        And I fill in "Year" field with "2010"
        And I fill in "Price" field with "200"
        And I attach a file
        And I click "Save Car"