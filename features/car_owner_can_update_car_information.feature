Feature: Car owner can update car information

    As a car owner
    In order to modify car information on the site
    I want to be able to update car information and/or remove car registration from the site

    Background:
        Given a user exists
        And I am logged in as 'real@mail.com'
        And The following cars exist
            | brand | model | year | price | user |
            | Volvo | V60   | 2010 | 200   | Greg |
            | Audi  | Q2    | 2018 | 300   | Greg |
        And I click "View Profile"
        And I click "Edit" within "Volvo V60"

    Scenario: Car owner can succesfully update car information
            Given I fill in "Brand" field with "Toyota" 
            And I fill in "Model" field with "Yaris"
            And I fill in "Year" field with "2002"
            And I fill in "Price" field with "700"
            And I click "Update"
            Then I should be on the profile page
            And I should see "Toyota"
            And I should see "Yaris"
            And I should see "2002"
            And I should see "700"
    
    Scenario: When I don't fill in update field I get an error message
            When I fill in "Brand" field with "" 
            And I fill in "Model" field with ""
            And I fill in "Year" field with ""
            And I fill in "Price" field with ""
            And I click "Update"
            Then I should see "Brand can't be blank"
            And I should see "Model can't be blank"
            And I should see "Year can't be blank"
            And I should see "Price can't be blank"
