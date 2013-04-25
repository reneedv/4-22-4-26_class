Given(/^I am on the new blog page$/) do
  visit '/blogs/new'
end

When(/^I fill in "(.*?)" for the "(.*?)" field$/) do |blog_text, blog_post_field|
  fill_in blog_post_field, :with => blog_text
end

When(/^I click "(.*?)"$/) do |create_blog|
  click_button create_blog
end

Then(/^I should see on the page "(.*?)"$/) do |blog_text|
  page.should have_content blog_text
end