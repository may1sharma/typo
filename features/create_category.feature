Feature: Create Category
  As a blog administrator
  In order to categorize a new type of blog
  I want to be able to create a new category 
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully write articles
    Given I am on the new categories page
    When I fill in "category_name" with "reptiles"
    And I fill in "category_keywords" with "snake"
    And I fill in "category_permalink" with "Not Available"
    And I fill in "category_description" with "describe"
    Then I press "Save"
    Then I should see "Category was successfully saved."
    Then I should see "reptiles"
    Then I should see "snake"
    Then I should see "Not Available"
    Then I should see "describe"