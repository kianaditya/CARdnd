Feature: Car owner can rent out car

    As a car owner
    In order to rent my car out to users
    I want to be able to register my car on the website

    Scenario: Car owner can succesfully rent out car
        Given I visit the landing page
        When I click "Add car"
        And I fill in "Brand" field with "Volvo"
        And I fill in "Model" field with "V60"
        And I fill in "Year" field with "2010"
        And I fill in "Price" field with "200"
        And I click "Save car"
        Then I should see "Car succesfully added"
        And I am on the landing page