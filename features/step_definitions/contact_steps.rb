Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I click on the "([^"]*)" link$/) do |link_name|
    click_link link_name
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see the "([^"]*)" field$/) do |field_name|
  expect(page).to have_field(field_name)
end