Feature: Sign up to Farmdrop
  As a new user
  I want to be able to create an account
  So that I can use order food


  Scenario Outline: Signup
    Given I am on the signup page
    When  I enter <email>, <password> and <postcode>
    Then I see a <result>

    Examples:
      | email                | password | postcode     | result                        |
      | stu@theawesome.co.uk | 123456   | N17 6JN      | Homepage                      |
      | stu@theawesome.co.uk | 123456   | bad postcode | postcode error                |
      | stu@theawesome.co.uk | 12345    | N17 6JN      | password error                |
      | stutheawesome.co.uk  | 123456   | N17 6JN      | email error                   |
      | stu@theawesome.co.uk | 123456   |              | Zipcode can't be blank error  |
      | stu@theawesome.co.uk |          | N17 6JN      | Password can't be blank error |
      |                      |          | 123456       | Email can't be blank error    |

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

