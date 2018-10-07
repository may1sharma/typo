Feature: Create Category
  As a blog administrator
  In order to categorize a new type of blog
  I want to be able to create a new category 
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully write articles
    Given I am on the new categories page
    When I fill in "category_name" with "test"
    And I fill in "category_keywords" with "keys"
    And I fill in "category_permalink" with "GG"
    Then I press "Save"
    Then I should see "Category was successfully saved."