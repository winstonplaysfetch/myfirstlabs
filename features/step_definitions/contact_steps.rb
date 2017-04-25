Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on the "([^"]*)" link$/) do |link_name|
  click_link link_name
end





