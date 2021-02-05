Feature:  karate db test suite 16
  Writing response to external file

  Scenario: select stmt test case
    * def util = Java.type("misce.utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response

   # * def res = get response $.data[0].email
    * print res
    * util.writeToFile("result.json",res)
    Scenario: Reading result file
      * def data = read("classpath:result.json")
      * print data
