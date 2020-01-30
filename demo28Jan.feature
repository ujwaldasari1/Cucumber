Feature: Pixel store Pos
Background:
Given Sales Executive logged into machine

@RegressionTest
Scenario: Executive signup
Given Execution is at signup regstration
When  Executive provides "admin" and "admin"
Then signup successful
@Smoke @RegressionTest
Scenario: Shopping cart
Given executive added the  items to cart
When  items price is calculted
Then bill is genrated with final am
Scenario: Registration with the store
 Given Alex is Existing customer
 And Alex has good purchase record
 When Alex provided his mobile number
 Then Registation is successful

Scenario: Refund of a microwave
   Given Alex purchase microwave for 100 dollers
   And   Alex has a recepit
   When  Alex returns the faulty microwave
   Then  Alex got refund of 100 dollers    
 @FunctionalTest  
Scenario Outline:  Sale Executive signin
  When Sales Executive provides "<user>" and "<password>"
  Then Login is Successful
 
  Examples:
  |user|password|
  |John|password123|
  |Ravi|ravi123|
  
  @datadriven
  Scenario: Search a product
  When Larry searches for products in the search field
  |Head|
  |Hand|
  |Lap|
  Then Larry verifies the product availabilty