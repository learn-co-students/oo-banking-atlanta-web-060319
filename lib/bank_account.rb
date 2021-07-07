require 'pry'

class BankAccount
attr_accessor :status, :balance
attr_reader :name

  def initialize(name, balance=1000, status="open")
@name = name
@balance = balance
@status = status
  end

def deposit(num)
  # binding.pry
@balance = @balance + num
end

def display_balance
return "Your balance is $#{self.balance}."
end

def valid?
  @balance > 0 && @status == "open"
end

  def close_account
@status = "closed"
  end

end
