Feature: Karate TestSuite 7
  validating data types of variable

  Scenario: data type validatioon Test case
    * def a = "10"
    * def b = "Kararte"
    * def c = "Karate Framework"

    * match a == "#regex [0-9]+"
    * match a == "#regex \\d+"
    * match b == "#regex \\w+"
    * match b == "#regex [A-Z][a-z]+"
    * match b == "#regex [A-Za-z\\s]+"
    * match c == "#regex (\\w+\\s?)+"


