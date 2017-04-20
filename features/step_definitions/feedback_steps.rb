Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on the "([^"]*)" link$/) do |link_name|
  click_link link_name
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see "([^"]*)" field$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

