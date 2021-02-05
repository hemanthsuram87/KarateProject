Feature: Karate Config TS 23
  Reading Global variabke from karate config

  Scenario: Karate Config Test case 1
    Given url baseUrl
    And path listUsers
    When method Get
    Then status 200
    * print response
