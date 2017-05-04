Given(/^There is a project already created by an admin called "([^"]*)" with the description "([^"]*)"$/) do |object_name, object_description|
  Project.create! :name=>object_name, :description=>object_description
end

Then(/^I should see the "([^"]*)" link$/) do |link_name|
  expect(page).to have_content(link_name)
end
