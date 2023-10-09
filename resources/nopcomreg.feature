Feature: Nopcommerce Registration

  As a User
    I want to check register functionality of Nopcommerce

  Background: I am on  Nopcommerce Registration page
    Given I open the Google Chrome Browser
    When  I open the Url http://demo.nopcommerce.com/register
    Then  I am on Nopcommerce Register page

    Scenario Outline: : I should not be able to register with invalid data on mandatory field (*) of
    registration page
      When I enter First name "<First Name>"
      And  I enter Last Name "<Last Name>"
      And  I enter Email Address "<Email>"
      And  I enter Password "<Password>"
      And  I enter Confirm Password "<Confirm Password>"
      And  Click on Register button
      Then I can see an error message "<error message>"
      And  I am not able to register

      Example:
      |First Name  |Last Name           |Email             |Password  |Confirm password  |error message                                      |
      |""          |Bakshi              |bakshi@gmail.com  |456897    |456897            |please enter message                               |
      |Rohan       |""                  |bakshi@gmail.com  |456897    |456897            |please enter last name                             |
      |Rohan       |Bakshi              |""                |456897    |456897            |please enter valid email                           |
      |Rohan       |Bakshi              |bakshi@gmail.com  |""        |456897            |please is required                                 |
      |Rohan       |Bakshi              |bakshi@gmail.com  |456897    |""                |confirm password required                          |
      |Rohan       |Bakshi              |bakshi@gmail.com  |456897    |45689             |password and conform password do not match         |
      |Rohan       |Bakshi              |bakshi@gmail.com  |456897    |""          Rohan |minimum 6 character password is field is required  |
      |""          |""                  |""                |""        |""                |Mandatory(*)                                       |

        Scenario: I should be able to select any one ratio button from Gender Label of Your Personal Detail Section
          Given   I am on Gender Label of Your Personal detail section
          When    I select "Male" radio button
          And     I select "Female" ratio button
          Then    I am able to select any one of the ratio button

          Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
            Given I am on Date of Birth Field of Your Personal Detail Section
            When  I select day"<Day>"
            And   I select month "<Month>"
            And   I select Year "<Year>"
            Then  I am able to select Day, Month and year from down list

            Example:
                  |Day|Month|Year
                  |11|November|1989

              Scenario: I should be able to check uncheck the Newsletter box on Options section
                Given   I am on Newsletter label on Option section
                When    I click on Newsletter checkbox
                And     I again click on Newsletter checkbox
                Then    I was able to check and uncheck the box next to Newsletter label

                Scenario: I should to register with valid mandatory (*) field data on registration page
                  When    I enter First Name "Rohan"
                  And     I enter Last Name "Bakshi"
                  And     I enter Email "bakshi@gmail.com
                  And     I enter Password "456897"
                  And     I enter Confirm password "456897"
                  And     I Click on Register button
                  Then    I was able to register successfully











