Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully write articles
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"

  Scenario: Successfully write a similar article
    Given I am on the new article page
    When I fill in "article_title" with "Baz"
    And I fill in "article__body_and_extended_editor" with "dolor sit amet"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Baz"
    When I follow "Baz"
    Then I should see "dolor sit amet"

 Scenario: Successfully merge articles
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
    Given I am on the new article page
    When I fill in "article_title" with "Baz"
    And I fill in "article__body_and_extended_editor" with "dolor sit amet"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Baz"
    When I follow "Baz"
    Then I should see "dolor sit amet"
    Given I am on the admin content page
    Then I should see "Foobar"
    When I follow "Foobar"
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum dolor sit amet"

        
    

