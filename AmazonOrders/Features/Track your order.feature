Feature: Track your order

Background: Login to Amazon.in
	Given User Opens <WebSite> singin page
	When User logs in with <UserName> and <Password>
	Then User must be on Home page of <WebSite>
	Examples: 
	| WebSite   | UserName      | Password |
	| Amazon.in | ABC@gmail.com | xyz      |

Scenario: Check the tracking status
	Given: User is in <InitialPage>
	When User clicks on <Button>
	Then User is displayed with tracking details

	Examples: 
	| InitialPage | Button        |
	| Your Orders | track package |