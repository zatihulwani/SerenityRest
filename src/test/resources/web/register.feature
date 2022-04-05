Feature: Register

  Background: user is on registration page
    Given user is on registration page

  Scenario: Success Register
    And user input email data
    And user input password data
    And user input address data
    When user click register button
    Then user should be redirected to homepage

  Scenario: Failed Register
    And user input email data
    And user input password data
    When user click register button
    Then user should be able to see warning message

  Scenario: Register using google account
    When user click register with google
    Then user should be redirected to google page

    Scenario: Register using facebook account
      When user click register with facebook
      Then user should be redirected to facebook page