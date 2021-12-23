Feature: print hello world
Scenario: Hello World Scenario
	* print 'Hello World'

Scenario: Second Test
	* print 'This is second Test 2'

Scenario: Declare and print variables
	* def balance = 100
	* def fee = 1
	* def tax = 0.5
	* print 'Total Amount: ' +(balance+fee+tax)