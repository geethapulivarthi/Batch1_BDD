Feature: Buy It Again

Background: Login to Amazon.in
	Given User Opens <WebSite> singin page
	When User logs in with <UserName> and <Password>
	Then User must be on Home page of <WebSite>
	Examples: 
	| WebSite   | UserName      | Password |
	| Amazon.in | ABC@gmail.com | xyz      |

Scenario Outline: User chooses to buy the product again
	Given: User is in your orders page
	When User clicks on <Button>
	Then User is displayed with <Details Page>
	Examples:
	| Button       | Details Page |
	| buy it again | Product      |

Scenario: Add the product to cart
	Given The user is displayed with <Product Results>
	And The user selects any one of the <Product>
	When The user clicks on <Button>
	Then The product is added to cart
	And The cart image displays the number of products added

	Examples: 
	| Product Results | Product | Button      |
	| Mobile          | Samsung | Add to cart |


Scenario Outline: Place the order
Given The user is in <InitialPage>
And The product is displayed in the page
When The user makes the payment
Then The order is placed
And The user is navigated to <FinalPage>

Examples: 
| InitialPage  | FinalPage   |
| Shoping Cart | Your Orders |