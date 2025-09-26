Feature: Read Feature File

Examine a feature file to identify its contents, recognize or evaluate its structure, and recognize specific characteristics of the file.


Scenario: Read Feature File
Scenario: Identify Feature File

Given an agent examining a file
And the agent has not yet encountered any of the Gherekin primary keywords
When the agent encounters the first primary keyword
Then the agent checks whether it is "Feature"

Scenario: File is a Gherkin Feature File
Given an agent examining a file
And "Feature" is the first primary keyword in the file
When the agent encounters the primary keyword "Feature"
Then the agent recognizes the file as a Gherkin Feature file.


Scenario: File is not a well-formed Gherkin Feature File
Given an agent examining a file
And "Feature: " is present in the feature file
And when present it is _not_ the first word on its line

Or there is one or more primary keyword other than "Feature" earlier in the file
When the agent identifies the file type
Then the agent recognizes the file as a possible Feature file.

Scenario: File is not a Gherkin file at all
Given an agent examining a file
And "Feature: " is _not_ present in the feature file
When the agent identifies the file type
Then the agent recognizes the file does not have the minimum characteristics necessary to be considered a Gherkin Feature file.




Scenario: Identify feature-level modifiers

# At the feature level there can be tags and comments


Scenario: Identify scenarios

Scenario: List Rules

Scenario: List Scenarios

Scenario: Compare Rules and Scenarios


Scenario: Evaluate scenario set completeness