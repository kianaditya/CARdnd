Feature: Visitor can see specific car information
    As a visitor
    In order to rent a car
    I want to see more information about specific car I have selected

    Background:
        Given The following car exists
            | brand | model | year | price |
            | Volvo | V60   | 2010 | 200   |
        And I visit the landing page


    Scenario: View specific car on show page
        Given I visit the show page
        Then Show me the page
        Then I should see "Volvo V60"
        And I should see "Year: 2010" within "Volvo V60"
        And I should see "Price: 200 SEK per day" within "Volvo V60"