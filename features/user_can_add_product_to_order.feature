@javascript
Feature: User can add product to order
  As a user
  In order to buy food
  I would like to add products to an order

  Background:
    Given the following products exist
      | name  | description | price |
      | pizza | good        | 45    |
      | sushi | very good   | 65    |
      | semla | creamy      | 25    |

  Scenario:
    Given I visit the home page
    # Then stop
    And I click on "Add to order" on "pizza"
    Then I should see "1 item"