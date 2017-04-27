Given(/^I am on the home page of the website$/) do
  visit root_path
end

When(/^I click on the "([^"]*)" link button$/) do |link_name|
  click_link link_name
end





