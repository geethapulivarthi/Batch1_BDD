Feature: PlaceOrders

Background: Login to Amazon.in
	Given User Opens <WebSite> singin page
	When User logs in with <UserName> and <Password>
	Then User must be on Home page of <WebSite>
	Examples: 
	| WebSite   | UserName      | Password |
	| Amazon.in | ABC@gmail.com | xyz      |


Scenario Outline: Search for a Product 
	Given User is in Amazon Home page
	When <Product> is searched
	Then The user is displayed with <Product> results
	Examples: 
	| WebSite   | Product |
	| Amazon.in | Mobile  |

Scenario Outline: Add Product to Cart
	Given The user is displayed with <Product Results> results
	#And Get Cart Products count
	When User selects a <Product>
	And The user clicks on <button>
	Then Product must be in <Landing Page>
	Examples: 
	| Product Results | Product | Button      | Landing Page |
	| Mobile          | Samsung | Add to cart |Shopping Cart |

Scenario Outline: Place Order and Check Order Page
	Given User is in <InitialPage>
	When User makes the payment
	Then Product must in <Landing Page>
	And Product must be in <page>
	Examples: 
	| InitialPage   | Landing Page |
	| Shopping Cart | Your Orders  |



