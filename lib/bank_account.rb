class BankAccount

attr_reader :name
attr_accessor :balance, :status, :bank_account

def initialize(name, balance = 1000)
  @name = name
  @balance = balance
  @status = "open"
end



end
