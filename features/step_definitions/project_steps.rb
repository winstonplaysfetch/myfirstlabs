When(/^I click on "([^"]*)" link$/) do |page_name|
    click_link page_name
end

Then(/^I should be on "([^"]*)" page$/) do |page_name|
    expect(page).to have_content(page_name)
end

When(/^I click on "([^"]*)"$/) do |page_name|
    expect(page).to have_content(page_name)
end
