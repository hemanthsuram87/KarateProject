Feature: Karate Test Suite 1
  validating JSON content
  
  Scenario: JsonTest case 1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name

  Scenario: JsonTest case 2
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
  """

    * print json
    * print json.id
    * print json.tool.name

  Scenario: Json Test case 3
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * assert json.id == "101"
    * assert json.tool.name == "Karate"



  Scenario: Json Test case 4
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.4"}}


    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Json Test case 5
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}


    * match json.tool == { "name":"Karate", "version":"0.9.6"}