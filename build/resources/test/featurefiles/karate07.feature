Feature: Karate TestSuite 7
  validating data types of variable

  Scenario: data type validatioon Test case
    * def a = 10
    * def b = "Kararte"
    * def c = true

    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"
  

