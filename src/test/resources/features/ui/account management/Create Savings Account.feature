@ui @account @savings
Feature: Create Savings Account (UI)
 As a DigitalBank user
 I want to create a new Savings Account
 So I can deposit and withdraw money


@negative
Scenario: New Savings Account with 'Valid' Name with Ownership 'Individual' and Type 'Money Market' and Deposit '0-2499' with result 'Account Not Created'
  Given Carleen is logged into the application with Carleen6231@gmail.com
  And they attempt to open a new 'Savings Account'
  When Carleen enters 'Figs Savings' into the Account Name field
  And they select 'Individual' from the Ownership radio button
  And they select 'Money Market' from the Account Type radio button
  And they enter '1807' into the Money Market Initial Deposit field
  And they click the Submit button
  Then Carleen verifies the account could not be created
  And they verify they are presented with a message indicating insufficient balance 

@negative
Scenario: New Savings Account with 'Valid' Name with Ownership 'Individual' and Type 'Money Market' and Deposit '&lt;0' with result 'Account Not Created'
  Given Busara is logged into the application with Busara4792@gmail.com
  And they attempt to open a new 'Savings Account'
  When Busara enters 'Nectarines Savings' into the Account Name field
  And they select 'Individual' from the Ownership radio button
  And they select 'Money Market' from the Account Type radio button
  And they enter '-30' into the Money Market Initial Deposit field
  And they click the Submit button
  Then Busara verifies the account could not be created
  And they verify they are presented with a message indicating form validation error

@positive
Scenario: New Savings Account with 'Valid' Name with Ownership 'Individual' and Type 'Money Market' and Deposit '2500' with result 'Money Market Account Created'
  Given Ducha is logged into the application with Ducha793045@gmail.com
  And they attempt to open a new 'Savings Account'
  When Ducha enters 'Tangerine Savings' into the Account Name field
  And they select 'Individual' from the Ownership radio button
  And they select 'Money Market' from the Account Type radio button
  And they enter '2500' into the Money Market Initial Deposit field
  And they click the Submit button
  Then Ducha verifies a 'Money Market Savings Account' should be created
  And they verify account balance should be '2500'

@positive
Scenario: New Savings Account with 'Valid' Name with Ownership 'Individual' and Type 'Money Market' and Deposit '&gt;2500' with result 'Money Market Account Created'
  Given Kamalkali is logged into the application with Kamalkali45522@gmail.com
  And they attempt to open a new 'Savings Account'
  When Kamalkali enters 'Jujube Savings' into the Account Name field
  And they select 'Individual' from the Ownership radio button
  And they select 'Money Market' from the Account Type radio button
  And they enter '3311' into the Money Market Initial Deposit field
  And they click the Submit button
  Then Kamalkali verifies a 'Money Market Savings Account' should be created
  And they verify account balance should be '3311'

@positive
Scenario: New Savings Account with 'Valid' Name with Ownership 'Individual' and Type 'Savings' and Deposit '25' with result 'Reg. Savings Account Created'
  Given Citiwala is logged into the application with Citiwala79985@gmail.com
  And they attempt to open a new 'Savings Account'
  When Citiwala enters 'Barberry Savings' into the Account Name field
  And they select 'Individual' from the Ownership radio button
  And they select 'Savings' from the Account Type radio button
  And they enter '25' into the Savings Initial Deposit field
  And they click the Submit button
  Then Citiwala verifies a 'Regular Savings Account' should be created
  And they verify account balance should be '25'
