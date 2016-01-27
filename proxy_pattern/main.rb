require "./bank_account"
require "./bank_account_proxy"
require "./virtual_account_proxy"
require "./virtual_proxy"
require "./account_proxy"
require "./account_protect_proxy"

account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

proxy = BankAccountProxy.new(account, 'miguel')
proxy.deposit(50)
proxy.withdraw(10)
puts proxy.balance

account = VirtualAccountProxy.new { BankAccount.new(10) }

ap = AccountProxy.new( BankAccount.new(100) )
ap.deposit(25)
ap.withdraw(50)
puts("account balance is now: #{ap.balance}")

s = AccountProtectionProxy.new( "a simple string", 'miguel' )
puts("The length of the string is #{s.length}")

array = VirtualProxy.new { Array.new }
array << 'hello'
array << 'out'
array << 'there'