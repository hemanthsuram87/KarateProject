Feature: calling feature suite
  Calling Feature scenario

  Scenario: Non static method TC
    * def env1 =
      """
      function()
      {
      var temp  = Java.type('misce.utils')
      return temp.method2();
      }
      """
    * print env1()