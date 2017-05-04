Given(/^There is a project already created by an admin called "([^"]*)" with the description "([^"]*)"$/) do |object_name, object_description|
  Project.create :name=>object_name, :description=>object_description
end

Then(/^I should see the "([^"]*)" link$/) do |link_name|
  expect(page).to have_content(link_name)
end

Given(/^This Feedback is in the database: "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", and "([^"]*)"$/) do |project_id, commenter, title, body, is_approved|
  Feedback.create :project_id=>project_id, :commenter=>commenter, :title=>title, :body=>body, :is_approved=>is_approved
end

Then(/^I should see user "([^"]*)" feedback$/) do |user_name|
  expect(page).to have_content(user_name)
end

Then(/^I should not see user "([^"]*)" feedback$/) do |user_name|
  expect(page).to_not have_content(user_name)
end