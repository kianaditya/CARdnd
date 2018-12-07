Feature: Car owner can upload image

    As a car owner
    In order to show more details about the car
    I want to add a picture of my car

    Background:
        Given the following user exists
            | email         |
            | real@mail.com |
        And I am logged in as 'real@mail.com'
        And I click "View Profile"
        And I click "Add Car"

    Scenario: Car owner can successfully upload image during car registration
        Given I fill in "Brand" field with "Volvo"
        And I fill in "Model" field with "V60"
        And I fill in "Year" field with "2010"
        And I fill in "Price" field with "200"
        And I attach an image to "automobile"
        And I click "Save Car"