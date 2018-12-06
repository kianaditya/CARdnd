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

    Scenario: Car owner can succesfully update car information
            Given I click "View Profile"
            When I click "Edit" within "Volvo V60"
            And I fill in "Brand" field with "Toyota" 
            And I fill in "Model" field with "Yaris"
            And I fill in "Year" field with "2002"
            And I fill in "Price" field with "700"
            And I click "Update"