@ST_4535 @AddNewAccount
Feature: Add new account

@SC_29907 @REL-701
Scenario: Check account was not added
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
When I navigate to page 'Profile'
And I click on Create button for Credentials on Profile page
When I populated all required fields for new credential
And I click button 'Cancel' for new credential
And I see account is not in the table 'Credentials'

@SC_29908 @REL-699:
Scenario: Check new account was added
Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
When I navigate to page 'Profile'
And I click on Create button for Credentials on Profile page
When I populated all required fields for new credential
And I click button 'Add' for new credential
Then I see my account in table 'Credentials'
And I select project "default"
And I am in page "Project Settings"
And I see account was added to the dropdown 'Account' on TTS block
And I see account was added to the dropdown 'Account' on VCS block
When I navigate to page 'Profile'
And I click button 'Delete' for created account in panel 'Credentials' in page 'User Profile'