Feature: Car owner can rent out car

    As a car owner
    In order to rent my car out to users
    I want to be able to register my car on the website

    Background: 
        Given a user exists
        And I am logged in as 'real@mail.com'
        And I click "My Cars"
        And I click "Add Car"

    Scenario: Car owner can succesfully rent out car
        And I fill in "Brand" field with "Volvo"
        And I fill in "Model" field with "V60"
        And I fill in "Year" field with "2010"
        And I fill in "Price" field with "200"
        And I click "Save Automobile"
        Then I should see "Car succesfully added"
        And I should be on the users page
        And I should see "Volvo V60"
        And I should see "Year: 2010"
        And I should see "Price: 200 SEK per day"

    Scenario: When car owner fills out rent form unsuccessfully he gets an error message
        When I click "Save Automobile"
        Then I should see "Brand can't be blank"
        And I should see "Model can't be blank"
        And I should see "Year can't be blank"
        And I should see "Price can't be blank"
