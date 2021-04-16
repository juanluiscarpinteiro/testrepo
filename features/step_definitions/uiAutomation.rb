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

Then(/^I click on "([^"]*)" custom button$/) do |button|
  page.find(:xpath, config['saucePage']['loginButton'], wait:30).click    
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


Then(/^I enter the user name and password available$/) do 
	page.find(:xpath, config['saucePage']['usernamePlaceholderInput'], wait:30).set(@usernameFound)
  page.find(:xpath, config['saucePage']['passwordPlaceholderInput'], wait:30).set(@passwordFound)
end


Then(/^I add to cart all of the elements available on screen$/) do 
  availableItemsToPurchase  = page.all(:xpath, config['saucePage']['addToCartButtons'], wait:30)
  
  availableItemsToPurchase.each do|item|
      item.click
    end
end

Then(/^I clcik on cart icon$/) do 
	page.find(:xpath, config['saucePage']['cartIcon'], wait:30).click
end

Then(/^I verify screen has the following element text "([^"]*)"$/) do |message|
  expect(page).to have_xpath(config['saucePage']['titleHeader'].sub('HEADER', message), wait:30) 
end

Then(/^I enter "([^"]*)" as first name, "([^"]*)" as last name, and "([^"]*)" as zipcode$/) do |fname,lname,zip|
  page.find(:xpath, config['saucePage']['infoInputGeneric'].sub('ENTERINFO',"firstName"), wait:30).set(fname)
  page.find(:xpath, config['saucePage']['infoInputGeneric'].sub('ENTERINFO',"lastName"), wait:30).set(lname)
  page.find(:xpath, config['saucePage']['infoInputGeneric'].sub('ENTERINFO',"postalCode"), wait:30).set(zip)
end

Then(/^I verify the following message on screen: "([^"]*)"$/) do |message|
  expect(page).to have_xpath(config['saucePage']['thankYouMessage'].sub('MESSAGE', message), wait:30) 
end
