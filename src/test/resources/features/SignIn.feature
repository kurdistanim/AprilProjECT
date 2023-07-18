Feature: Sign In Feature

  Background: 
    Given User is on retail website
    When User click on Sign in option

  @SignIn
  Scenario: Verify user can sign in into Retail Application
    And User enter email 'april.khalifat@gmail.com' and password 'Tek@1234'
    And User click on login button
    Then User should be logged in into Account

  Scenario Outline: Verify user can login with different email and pass
    And User enter email <email> and password <password>
    And User click on login button
    Then User should be logged in into Account

    Examples: 
      | email                           | password    |
      | 'april.khalifat1@tekschool.com' | 'Tek@12345' |
      | 'april.kh21@tekschool.com'      | 'Tek@12345' |
      | 'april123@tekschool.com'        | 'Tek@12345' |
