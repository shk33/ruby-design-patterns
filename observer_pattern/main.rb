require "./employee"
require "./payroll"
require "./tax_man"

fred = Employee.new "Fred", "Operator", 30000
payroll = Payroll.new
taxMan = TaxMan.new

fred.add_observer payroll

fred.salary = 35000

fred.add_observer taxMan

fred.salary = 90000