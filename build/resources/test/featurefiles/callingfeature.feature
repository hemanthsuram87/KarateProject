Feature: calling feature suite
  Calling Feature scenario

  @rest
  Scenario: calling feature Test case 1
    * def result = call read("karate13 suite.feature")
    * print result
    * assert result.response.string._ == "104"