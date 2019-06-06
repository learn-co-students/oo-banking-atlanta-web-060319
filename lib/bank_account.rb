class BankAccount
    
    @@accounts = []
    
    def initialize(name)
        @name = name
        @status = "open"
        @balance = 1000
        @@accounts << self
    end

    attr_reader :name
    attr_accessor :status, :balance

    def deposit(amount_added)
        self.balance += amount_added
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        self.status == "open" && self.balance > 0
        
    
    end

    def close_account
        self.status = "closed"
    end




end
