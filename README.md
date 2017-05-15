# bank-tech-test
[![Build Status](https://travis-ci.org/nazwhale/bank-tech-test.svg?branch=master)](https://travis-ci.org/nazwhale/bank-tech-test)

I was challenged to write a simple banking app for the command line in order to practice TDD and writing clean, agile code.

### Challenge requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Installation
```
$ git clone git@github.com:nazwhale/command-line-bank.git
$ cd command-line-bank
$ bundle
```
### Example of use
```
$ irb
2.3.3 :001 > require './lib/account'
 => true
2.3.3 :002 > account = Account.new
 => #<Account:0x007fcfff04c028 @balance=0, @statement=#<Statement:0x007fcffe8fbfa8 @history=[]>>
2.3.3 :003 > account.make_deposit(1000)
 => 1000
2.3.3 :004 > account.make_withdrawal(50)
 => 950
2.3.3 :005 > account.make_withdrawal(120)
 => 830
2.3.3 :006 > account.make_deposit(200)
 => 1030
2.3.3 :008 > account.statement.print
date || credit || debit || balance
15/05/2017 || 200.00 || || 1030.00
15/05/2017 || || 120.00 || 830.00
15/05/2017 || || 50.00 || 950.00
15/05/2017 || 1000.00 || || 1000.00
 => [#<Deposit:0x007fcfff8595b8 @date="15/05/2017", @amount=200, @latest_balance=1030>, #<Withdrawal:0x007fcfff05c428 @date="15/05/2017", @amount=120, @latest_balance=830>, #<Withdrawal:0x007fcfff05fd58 @date="15/05/2017", @amount=50, @latest_balance=950>, #<Deposit:0x007fcfff056f28 @date="15/05/2017", @amount=1000, @latest_balance=1000>]
```
