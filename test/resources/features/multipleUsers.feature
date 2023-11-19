Feature: User Login on Sauce Demo

  Scenario Outline: Login with Various Credentials
    Given the user is on the Sauce Demo login page
    When the user enters "<username>" and "<password>"
    And clicks on the "Login" button
    Then the user should be redirected to the home page or see an error message

    Examples:
      | username       | password     |
      | standard_user  | secret_sauce |
      | locked_out_user | secret_sauce |
      | problem_user   | secret_sauce |
      | performance_glitch_user | secret_sauce |
