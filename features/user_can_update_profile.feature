Feature: User can update his/her profile

    As a user
    In order to share more information about myself
    I want to be able to create my profile on the site

    Background: 
        Given a user exists
        And I am logged in as 'real@mail.com'
        And I click 'View profile'
        And I click 'Edit profile'

    Scenario: User successfully can update his or her profile
        When I fill in 'Email' field with 'realdonald@wdonaldisthebest.com'
        And I fill in 'Password' field with 'actuallyidowanadatemydaughter'
        And I fill in 'Password confirmation' field with 'actuallyidowanadatemydaughter'
        And I fill in 'First name' field with 'Donnyboy'
        And I fill in 'Last name' field with 'Trumpocius'
        And I fill in 'Address' field with 'Trump towers'
        And I fill in 'Driving age' field with '32'
        And I fill in 'Age' field with '21'
        And I fill in 'About' field with 'Bestguyever'
        And I fill in 'Phone' field with '1234455679'
        And I fill in 'Current password' field with 'password'
        And I click 'Update'
        And I click 'View profile'
        Then I should see 'realdonald@wdonaldisthebest.com'
        And I should see 'Donnyboy'
        And I should see 'Trumpocius'
        And I should see 'Trump towers'
        And I should see '32'
        And I should see '21'
        And I should see 'Bestguyever'
        And I should see '1234455679'
