Feature: users
	I want to have users system!
    
	Scenario: signing up
		Given homepage
		When I click the 'Sign up' link
		And fill the sign up form
		And click the 'Sign up' button
		Then I should be redirected to the homepage
		And I should be logged in

	Scenario: signing in
		Given an anonymous user
		When I click the 'Sign in' link
		And fill the sign in form
		And click the 'Sign in' button
		Then I should be redirected to the homepage
		And I should be logged in

	Scenario: signing out
		Given a logged in user
		When I click the 'Sign out' link
		Then I should be redirected to the homepage
		And I should be logged out
    
	Scenario: modal dialog test
		Given homepage
		When I click the 'Launch demo modal' link
		And I click the 'Close' button
		Then I should see the homepage content
    
    @javascript
	Scenario: show post in modal dialog
	    Given a post has been created
		Given homepage
		When I click the 'Show' link
		#And I wait 8 seconds
		Then I should see a popup with the post information
		And I click the 'google' link
		Then I should see the google home page