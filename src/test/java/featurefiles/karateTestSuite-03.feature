Feature: Karate Test Suite 3
  validating XML content

  Scenario: XMLTest case 1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.tool.name

  Scenario: XMLTest case 2
    Given def xml =
    """
        <info>
      <id>101</id>
      <tool>
        <name>Karate</name>
        <version>0.9.6</version>
      </tool>
    </info>
    """
    * print xml
    * print xml/info/id
    * print xml.info.tool.name

  Scenario: XMLTest case 3
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>

    * match xml/info/id == 101
    * match xml.info.tool.name == "Karate"

  Scenario: XMLTest case 4
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>

    * match xml contains  "Karate"

  Scenario: XMLTest case 5
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>

    * match xml contains  "<name>Karate</name>"

  Scenario: XMLTest case 6
    Given def xml =
    """
  <info>
  <id>101</id>
  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
"""
    * match xml/

  Scenario: XMLTest case 6
    Given def xml =
    """
  <info>
  <id>101</id>
  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
"""
    * match xml/info/tool[1]/name contains "Karate"
    * match xml/info/tool[2]/name contains "IntelliJ"