#FactoryGirl.find_definitions

Given (/^"([^"]*)" is logged in$/) do |email|
  @current_user = FactoryGirl.create(:user, :email => email)
  log_in
end

private

Given(/^I am on "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end


def log_in
  if Capybara.current_driver == :webkit
    page.driver.browser.set_cookie("stub_user_id=#{@current_user.id}; path=/; domain=127.0.0.1")
  else
    cookie_jar = Capybara.current_session.driver.browser.current_session.instance_variable_get(:@rack_mock_session).cookie_jar
    cookie_jar[:stub_user_id] = @current_user.id
  end
end