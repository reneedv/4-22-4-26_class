Feature: As student, I want to blog about my courses.

Scenario: Students can add blog posts
  Given I am on the new blog page
  When I fill in "This is a blog" for the "Post" field 
    And I click "Create Blog"
  Then I should see on the page "This is a blog"