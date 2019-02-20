@javascript
Feature: User can add product to order
  As a user
  In order to buy food
  I would like to add products to an order

  Background:
    Given the following users exist
      | email           |
      | thomas@craft.se |

    Given the following products exist
      | name  | description | price |
      | pizza | good        | 45    |
      | sushi | very good   | 65    |
      | semla | creamy      | 25    |

  Scenario:
    Given I visit the home page

    And I click on "Add to order" on "pizza"
    Then I should see "1 item"
    When I click on "Proceed to checkout"
    And I fill in "Enter Email" with "thomas@craft.se"
    And I fill in "Password" with "password"
    And I click on "Log in with password"
    Then I should be on the "addresses" step of the checkout
    Then stop

