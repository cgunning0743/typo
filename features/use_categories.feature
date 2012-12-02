Feature: Use Categories
  As a blog administrator
  In order to categorize articles in my blog
  I want to be able to create and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create new categories
    Given I am on the categories page
    When I fill in "Name" with "Category Name 1"
    And I fill in "Keywords" with "Keyword_A Keyword_B"
    And I fill in "Description" with "Description for Category Name 1"
    And I press "Save"
    Then I should be on the categories page

  Scenario: Edit existing categories
    Given I am on the categories page
    When I follow "General"
    Then I fill in "Name" with "Category Name 2"
    And I fill in "Keywords" with "Keyword_C Keyword_D"
    And I fill in "Description" with "Description for Category Name 2"
    And I press "Save"
    Then I should be on the categories page
