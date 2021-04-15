require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'selenium/webdriver'
require 'capybara/rspec'
require 'yaml'

config = YAML.load_file("#{$filePath}object-repository.yaml")

When(/^I load the sauce demo site$/)do 
    visit("https://www.saucedemo.com/")
    sleep(3)
end


Then(/^I click on "([^"]*)" button$/) do |button|
	expect(page).to have_button(button, wait: 30)
  click_button(button, wait:30)
end

Then(/^I get credentials from the UI$/) do |button|
  username = page.find(:xpath, config['saucePage']['usermane'], wait:30).text
  password= page.find(:xpath, config['saucePage']['password'], wait:30).text
  puts "Username " +  username + " password " + password 
end

Then(/^I click on "([^"]*)" button$/) do |button|
	expect(page).to have_button(button, wait: 30)
  click_button(button, wait:30)
end