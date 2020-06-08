Feature: Test feature for ATOL

  Background:
    Given cloud.sigma.ru/login page is opened

  Scenario: Successful authorization with email and password
    When I add login: correct_email
    And I add password: correct
    And I am trying to authorize
    Then I should be authorized sucessfully

  Scenario: Successful authorization with phone and password
    When I add login: correct_phone
    And I add password: correct
    And I am trying to authorize
    Then I should be authorized sucessfully

  Scenario Outline: Unsuccessful authorization
    When I add login: <Login>
    And I add password: <Password>
    And I set password visibility to <visibility>
    And I am trying to authorize
    Then I should not be authorized sucessfully
    And I should see next error: <error>

    Examples:
      | Login            | Password  | visibility | error                                                  |
      | incorrect@mm.com | incorrect | false      | Мы не нашли клиента с таким адресом электронной почты. |
      | correct_email    | incorrect | false      | Введен неверный пароль.                                |
      | incorrect@mm.com | correct   | false      | Мы не нашли клиента с таким адресом электронной почты. |
      | incorrect@mm.com | incorrect | true       | Мы не нашли клиента с таким адресом электронной почты. |
      | correct_email    | incorrect | true       | Введен неверный пароль.                                |
      | incorrect@mm.com | correct   | true       | Мы не нашли клиента с таким адресом электронной почты. |
      | +79999999599     | incorrect | false      | Мы не нашли клиента с таким телефоном                  |
      | correct_phone    | incorrect | false      | Введен неверный пароль.                                |
      | +79999999599     | correct   | false      | Мы не нашли клиента с таким телефоном                  |
      | +79999999599     | incorrect | true       | Мы не нашли клиента с таким телефоном                  |
      | correct_phone    | incorrect | true       | Введен неверный пароль.                                |
      | +79999999599     | correct   | true       | Мы не нашли клиента с таким телефоном                  |

  Scenario Outline: Disabling of auth button
    When I add login: <Login>
    And I add password: <Password>
    And I set password visibility to <visibility>
    Then Auth button should be disabled

    Examples:
      | Login         | Password  | visibility |
      |               | incorrect | false      |
      | correct_email |           | false      |
      |               |           | false      |
      |               | incorrect | true       |
      | correct_email |           | true       |
      |               |           | true       |
      | correct_phone |           | false      |
      | correct_phone |           | true       |
