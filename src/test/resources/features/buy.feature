#Pecthgamon Sangnual 6410406819
Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Banana" with price 15.00 and stock of 6 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    And "Bread" remain is 3
Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Banana" with quantity 2
    Then total should be 151.00
    And "Bread" remain is 3
    And "Jam" remain is 9

