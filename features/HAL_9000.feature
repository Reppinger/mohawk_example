Feature: Test Cucumber driving a Delphi Windows Desktop app
  In order to use cucumber for testing XCM
  As a DRB QA or Development team member
  I want to write my ATDD tests first

  Scenario: I can type something
    When I type "Nothing"
    Then something is "Nothing"

  # These scenarios use a "looser" form of assertion by looking at the text in the whole dialog.
  # It isn't wrong, but caution is advised as you can get false positives.
  Scenario: HAL 9000 gives Randy a sassy dialog
    When  I click the button
    Then the sassy dialog displays "I can't do that Randy..."
    And I smack that sassy dialog down

  Scenario: HAL 9000 does not give his creator a sassy dialog
    When  I click the button
    Then the dialog does not mention "Chad"

  # These two specifically look at the message label
  # Also, don't use this Gherkin as an example. ie. 'dialog message displays'
  # is overly wordy. It is only done to clarify which scenario is using which page object technique.
  Scenario: HAL 9000 gives Randy a sassy message
    When  I click the button
    Then the sassy dialog message displays "I can't do that Randy..."
    And I smack that sassy dialog down

  Scenario: HAL 9000 does not give his creator a sassy message
    When  I click the button
    Then the dialog message does not mention "Chad"

