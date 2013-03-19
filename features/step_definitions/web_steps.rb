require 'uri'

When /^(?:|I )go to the (.+)(?: page)?$/ do |page_name|
  visit path_to(page_name)
end
 
Given /^(?:|I )am on the homepage$/ do
  visit root_path
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).select(:path, :query).compact.join('?')
  if defined?(Spec::Rails::Matchers)
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end
 
And /^(?:|I )should see "([^"]*?)"$/ do |content|
  page.should have_content(content)
end
 
Then /^show me the page$/ do
  save_and_open_page
end

When(/^I follow "(.*?)"$/) do |arg1|
  page.click_link arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  find("#user_#{field.downcase}").set "#{value}"
end

When(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
