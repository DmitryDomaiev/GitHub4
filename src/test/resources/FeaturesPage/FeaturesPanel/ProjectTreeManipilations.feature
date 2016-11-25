@ST_4516 @ProjectTreeManipulations
Feature: Project tree manipulation

Background: 

Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
And I select project "default"
And I am in page "Editor"
When I click icon 'Update from Git' in panel 'Features'
And I click on 'Select All' checkbox on pop-up "UPDATE DATA FROM GIT"
And I click on button "Update" on pop-up "UPDATE DATA FROM GIT"
Then I see success notification ""

@SC_29837 @REL-466
Scenario: Moving an object in the tree
      #folder
      #cancel action
      #confirm action
      #feature
      #cancel action
      #confirm action
And I drag element "2" under element "4" in the tree
And I see pop up "MOVE FOLDER" is opened
And I see pop up message equals "Are you sure you want to move book to pagination folder?"
And I click on button "Cancel" on pop-up "MOVE FOLDER"
And I see pop up "MOVE FOLDER" was closed
And I can see that element "book" is in position "2" in the tree
And I drag element "2" under element "4" in the tree
And I see pop up "MOVE FOLDER" is opened
And I see pop up message equals "Are you sure you want to move book to pagination folder?"
And I click on button "Move" on pop-up "MOVE FOLDER"
And I see pop up "MOVE FOLDER" was closed
And I can see that element "book" is in position "3" in the tree
And I drag element "4" under element "5" in the tree
And I see pop up "MOVE FEATURE FILE" is opened
And I see pop up message equals "Are you sure you want to move search_book to pagination folder?"
And I click on button "Cancel" on pop-up "MOVE FEATURE FILE"
And I see pop up "MOVE FEATURE FILE" was closed
And I can see that element "search_book" is in position "4" in the tree
And I drag element "4" under element "5" in the tree
And I see pop up "MOVE FEATURE FILE" is opened
And I see pop up message equals "Are you sure you want to move search_book to pagination folder?"
And I click on button "Move" on pop-up "MOVE FEATURE FILE"
And I see pop up "MOVE FEATURE FILE" was closed
And I can see that element "search_book" is in position "6" in the tree

@SC_29838 @REL-467
Scenario: Rename and Move object pop-up + duplicate name
  #folder
  #feature
And I drag element "2" under element "11" in the tree
And I see pop up "RENAME AND MOVE FOLDER" is opened
And I click on button "RENAME AND MOVE" on pop-up "RENAME AND MOVE FOLDER"
And I see a notification message "Target folder already contains folder named 'book'" under "1" required fields on pop-up "RENAME AND MOVE FOLDER"
And I click on button "Cancel" on pop-up "RENAME AND MOVE FOLDER"
And I see pop up "RENAME AND MOVE FOLDER" was closed
And I can see that element "book" is in position "2" in the tree
And I drag element "2" under element "11" in the tree
And I see pop up "RENAME AND MOVE FOLDER" is opened
And I click button 'Enter'
And I see a notification message "Target folder already contains folder named 'book'" under "1" required fields on pop-up "RENAME AND MOVE FOLDER"
And I click on button "Cancel" on pop-up "RENAME AND MOVE FOLDER"
And I see pop up "RENAME AND MOVE FOLDER" was closed
And I can see that element "book" is in position "2" in the tree
And I drag element "3" under element "11" in the tree
And I see pop up "RENAME AND MOVE FEATURE FILE" is opened
And I click on button "RENAME AND MOVE" on pop-up "RENAME AND MOVE FEATURE FILE"
And I see a notification message "Target folder already contains featureFile named 'search_book'" under "1" required fields on pop-up "RENAME AND MOVE FEATURE FILE"
And I click on button "Cancel" on pop-up "RENAME AND MOVE FOLDER"
And I see pop up "RENAME AND MOVE FEATURE FILE" was closed
And I can see that element "search_book" is in position "3" in the tree
And I drag element "3" under element "11" in the tree
And I see pop up "RENAME AND MOVE FEATURE FILE" is opened
And I click button 'Enter'
And I see a notification message "Target folder already contains featureFile named 'search_book'" under "1" required fields on pop-up "RENAME AND MOVE FEATURE FILE"
And I click on button "Cancel" on pop-up "RENAME AND MOVE FEATURE FILE"
And I see pop up "RENAME AND MOVE FEATURE FILE" was closed
And I can see that element "search_book" is in position "3" in the tree

@SC_29839 @REL-478
Scenario: Rename and Move folder pop-up + dot in the beginning
And I drag element "2" under element "11" in the tree
And I see pop up "RENAME AND MOVE FOLDER" is opened
And I type ".book" into textbox "NEW NAME" in pop-up "RENAME AND MOVE FOLDER"
And I see a notification message "Can't start with '.'" under "1" required fields on pop-up "RENAME AND MOVE FOLDER"
And I click on button "Cancel" on pop-up "RENAME AND MOVE FOLDER"
And I see pop up "RENAME AND MOVE FOLDER" was closed
And I can see that element "book" is in position "2" in the tree

@SC_29840 @REL-483
Scenario Outline: Rename and Move feature file pop-up + invalid symbols
And I drag element "3" under element "11" in the tree
And I see pop up "RENAME AND MOVE FEATURE FILE" is opened
And I type "<invalid>" into textbox "NEW NAME" in pop-up "RENAME AND MOVE FEATURE FILE"
And I see a notification message "Story file name must contain only the following characters: A-z 0-9 _ -" under "1" required fields on pop-up "RENAME AND MOVE FEATURE FILE"
And I click on button "Cancel" on pop-up "RENAME AND MOVE FEATURE FILE"
And I see pop up "RENAME AND MOVE FEATURE FILE" was closed
And I can see that element "search_book" is in position "3" in the tree

Examples: 
|invalid|
|~|
|`|
|!|
|@|
|#|
|$|
|%|
|^|
|&|
|*|
|(|
|)|
|+|
|=|
|,|
|<|
|>|
|/|
|?|
|{|
|}|
|[|
|]|
|quote|
|'|
|:|
|;|


@SC_29841 @REL-484
Scenario Outline: Rename and Move folder pop-up + invalid symbols
And I drag element "2" under element "11" in the tree
And I see pop up "RENAME AND MOVE FOLDER" is opened
And I type "<invalid>" into textbox "NEW NAME" in pop-up "RENAME AND MOVE FOLDER"
And I see a notification message "Allowed characters: ' A-z 0-9 _ . - '" under "1" required fields on pop-up "RENAME AND MOVE FOLDER"
And I click on button "Cancel" on pop-up "RENAME AND MOVE FOLDER"
And I see pop up "RENAME AND MOVE FOLDER" was closed
And I can see that element "book" is in position "2" in the tree

Examples: 
|invalid|
|~|
|`|
|!|
|@|
|#|
|$|
|%|
|^|
|&|
|*|
|(|
|)|
|+|
|=|
|,|
|<|
|>|
|/|
|?|
|{|
|}|
|[|
|]|
|quote|
|'|
|:|
|;|


@SC_29842 @REL-475
Scenario Outline: Rename and Move folder pop-up + valid symbols
And I drag element "2" under element "11" in the tree
And I see pop up "RENAME AND MOVE FOLDER" is opened
And I type "<folderName>" into textbox "NEW NAME" in pop-up "RENAME AND MOVE FOLDER"
And I click on button "RENAME AND MOVE" on pop-up "RENAME AND MOVE FOLDER"
And I see pop up "RENAME AND MOVE FOLDER" was closed
And I can see that element "<folderName>" is in position "7" in the tree

Examples: 
|folderName|
|ABCDEFGHIJKLMNOPQRSTUVWXYZ|
|abcdefghijklmnopqrstuvwxyz|
|0123456789|
|-_.|
|Aa-0|


@SC_29843 @REL-474
Scenario Outline: Rename and Move feature file pop-up + valid symbols
And I drag element "3" under element "11" in the tree
And I see pop up "RENAME AND MOVE FEATURE FILE" is opened
And I type "<featureName>" into textbox "NEW NAME" in pop-up "RENAME AND MOVE FEATURE FILE"
And I click on button "RENAME AND MOVE" on pop-up "RENAME AND MOVE FEATURE FILE"
And I see pop up "RENAME AND MOVE FEATURE FILE" was closed
And I can see that element "<featureName>" is in position "10" in the tree

Examples: 
|featureName|
|ABCDEFGHIJKLMNOPQRSTUVWXYZ|
|abcdefghijklmnopqrstuvwxyz|
|0123456789|
|-_|
|Aa-0|


@SC_29844 @REL-468
Scenario: Select an object in the tree
    #feature
    #folder
And I select feature "search_book" in the tree
And I see that field "Feature" with label is displayed under the tree
And I see that field "File name" with label is displayed under the tree
And I see that field "Tags" with label is displayed under the tree
And I see that field "Description" with label is displayed under the tree
And I change textbox 'Feature' value to "Search for book" in feature info block under the tree
And I click button 'Enter'
And I see success notification ""
And I change textbox 'File name' value to "searching_book" in feature info block under the tree
And I click button 'Enter'
And I see success notification ""
And I change textbox 'Description' value to "Some other description" in feature info block under the tree
And I click button 'Save' for edited field under the tree
And I see success notification ""
And I type "new-tag" into tags input textbox in feature info block under the tree
And I click button 'Enter'
And I see that scenarios have label 'Scenarios' above the first accordion in Scenario Editor
And I see that scenarios table controls are displayed above scenarios list
And I see that feature name "SEARCH FOR BOOK" label is displayed above scenarios list
And I select folder "book" in the tree
And I see that field "Folder name" with label is displayed under the tree
And I change textbox 'Folder name' value to "books" in folder info block under the tree
And I click button 'Enter'
And I see success notification ""
And I see that label 'Scenarios' is not displayed in Scenario Editor
And I see that scenarios table controls are not displayed above scenarios list