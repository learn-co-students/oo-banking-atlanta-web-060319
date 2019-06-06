class Transfer
  # your code here
    attr_accessor :status, :amount
    attr_reader :sender, :receiver

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount  
    @status = "pending"
  end 

  def valid?
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction 
   if @status == "pending" && self.sender.valid? && self.sender.balance > self.amount
      self.sender.balance -= amount
      self.receiver.balance += amount 
        @status = "complete"
   else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
   end
  end 

  def reverse_transfer 
if @status == "complete" && self.receiver.valid? && self.receiver.balance > self.amount
      self.receiver.balance -= amount
      self.sender.balance += amount 
        @status = "reversed"
   else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
   end
  end 

end
