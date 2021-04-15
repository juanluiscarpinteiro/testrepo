@UIAutomation @test

Feature: User should be able to load, log in and purchase all t-shirts
	As a user
	I should be able to log into sacedemo.com
    Then purhcase all shirts


	Scenario: I should be able to load the browswer get credentials and log in followed by purchase all t-shirts
        When I load the sauce demo site 
        Then I get credentials from the UI
        # Then I enter the user name and password available
        # And click on "login" button
        # Then I scann for all elements present on page
        # Then I add to cart all of the elements available on screen
        # Then I clcik on "cart" icon
        # Then I verify screen has the following element text "Your Cart"
        # Then I click on "checkout" button
        # Then I verify screen has the following element text "CHECKOUT: YOUR INFORMATION"
        # Then I enter "Juan" as first name, "Carpinteiro" as last name, and "10583" as zipcode
        # Then I click on "continue" button  
        # Then I verify screen has the following element text "CHECKOUT: OVERVIEW"
        # Then I click on "finish" button
        # Then I verify the following message on screen: "Thank you for your order, your order has been dispatched, and will arrive just as fast as the pony can get there"
