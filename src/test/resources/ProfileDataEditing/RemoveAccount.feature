@ST_4537 @RemoveAccount
Feature: Remove account

@SC_29910 @REL-764
Scenario: Check ability to remove account on 'Profile' page
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
When I navigate to page 'Profile'
And I click on Create button for Credentials on Profile page
When I populated all required fields for new credential
And I click button 'Add' for new credential
And I see my account in table 'Credentials'
And I click button 'Delete' for created account in panel 'Credentials' in page 'User Profile'
And I see account is not in the table 'Credentials'