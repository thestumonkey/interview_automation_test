Feature: Sign up to Farmdrop
  As a new user
  I want to be able to create an account
  So that I can use order food


  Scenario Outline: Signup
    Given I am on the signup page
    When  I enter <email>, <password> and <postcode>
    Then I see <result>
    And my account is <created_or_not>

    Examples:
      | email                | password | postcode     | result               | created_or_not |
      | stu@theawesome.co.uk | 123456   | N17 6JN      | Homepage             | created        |
      | stu@theawesome.co.uk | 123456   | bad postcode | postcode_error       | not created    |
      | stu@theawesome.co.uk | 12345    | N17 6JN      | password_error       | not created    |
      | stutheawesome.co.uk  | 123456   | N17 6JN      | email_error          | not created    |
      | stu@theawesome.co.uk | 123456   |              | blank_postcode_error | not created    |
      | stu@theawesome.co.uk |          | N17 6JN      | blank_password_error | not created    |
      |                      |          | 123456       | blank_email_error    | not created    |

  Scenario: Account already exists
    Given I am on the signup page
    And the account "stu@theawesome.co.uk" already exists
    When I enter "stu@theawesome.co.uk", "password" and "N17 6JN"
    Then I see "account already exists"

  Scenario: Signup to mailing list
    Given I am on the signup page
    When I enter "stu@theawesome.co.uk", "password" and "N17 6JN"
    Then I am subscribed to the mailing list

  Scenario: Do not signup to mailing list
    Given I am on the signup page
    And I click the mailing list box
    When I enter "stu@theawesome.co.uk", "password" and "N17 6JN"
    Then I am not subscribed to the mailing list

