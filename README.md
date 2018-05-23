## Instructions

Clone the repo
In the terminal, `irb`
Type `require './bank.rb'`
Create a new instance of bank! e.g. `bank = Bank.new`
Add a transaction! Add as many as you like! e.g. `bank.enter_transaction("04/12/2020", 500)`
Print a statement summarising the statement! e.g. `bank.print_statement`

### User stories:

So that the user can store some money,
the user can deposit money into a bank account.

So that the user can take some money,
the user can withdraw money from a bank account.

So that the user can have more control,
the user can specify dates for deposit/withdraws.

So that the user can see her activity,
the user can print out a bank statement of activity.

### Domain model:

User can interact with the `BankAccount` to `.deposit` and `.withdraw`. User can `.print` a statement using information from the `BankAccount`.

### Changes:

User can initiate transactions that take a command and a date: `.deposit(amount, date)`. Each transaction gets pushed into a `Account` class that stores transactions in arrays.

Will need a `BankAccount` class to store the transactions in arrays.

With this methodology, a print class can take the amounts from each array, run through the transactions and print out the balance for each transaction.

The reason why I would place the responsibility of balance calculations in the `Print` class is if any transactions need to be edited, it won't affect the balance calculations for any of the other balances.
