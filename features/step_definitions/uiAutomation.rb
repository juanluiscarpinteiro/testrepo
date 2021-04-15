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

Then(/^I get credentials from the UI$/) do
  username= page.find(:xpath, config['saucePage']['usermane'], wait:30).text
  usernameArray = username.split(" ")
  password= page.find(:xpath, config['saucePage']['password'], wait:30).text
  passwordArray = password.split(" ")
  for username in usernameArray do
      if username.include? "_"
        @usernameFound = username
        break
      end
  end
  for password in passwordArray do
    if password.include? "_"
      @passwordFound = password
      break
    end
  end
  # puts @usernameFound
  # puts @passwordFound

end

Then(/^I click on "([^"]*)" button$/) do |button|
	expect(page).to have_button(button, wait: 30)
  click_button(button, wait:30)
end