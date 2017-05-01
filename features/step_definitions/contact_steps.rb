
Given(/^I am on the contacts page$/) do
    visit contacts_path
end

Then(/^I should see "([^"]*)"$/) do |page_name|
    expect(page).to have_content(page_name)
end

