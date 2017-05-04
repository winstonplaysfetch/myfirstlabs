Then(/^I should not see the "([^"]*)" link$/) do |link_name|
  expect(page).to_not have_content(link_name)
end