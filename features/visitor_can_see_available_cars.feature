Feature: Visitor can see all cars available for rent

    As a visitor
    In order to rent a car
    I want to see all the cars available for rent when I visit the site

Scenario: View list of cars on landing page
    Given I visit the landing page
    Then I should see "BRAND MODEL"
    And I should see "Year: 2002"
    And I should see "Price: 100 SEK per day"