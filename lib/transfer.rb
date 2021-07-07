class Transfer
  attr_reader :amount, :status, :sender, :receiver

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

def valid?
  self.sender.valid? && self.receiver.valid?
end

def execute_transaction
 if self.status == "pending" && self.sender.valid? && self.sender.balance > self.amount
    self.sender.balance -= self.amount
    self.receiver.balance += self.amount
   @status = "complete"
 else
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end

def reverse_transfer
  if self.status == "complete" 
    self.sender.balance += self.amount
    self.receiver.balance -= self.amount
    @status = "reversed"
  else
    "nothing done here"
  end
end


  
  

end
