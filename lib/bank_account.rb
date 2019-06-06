class BankAccount
    attr_accessor :balance, :status
    attr_reader :name
    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end
    def name
        @name
    end
    def balance
        @balance
    end

    def status
        @status
    end

    def deposit(money)
        self.balance += money
    end

    def display_balance
        self.balance
       "Your balance is $#{@balance}."
    end

    def valid?
        if self.status == "open" &&
            self.balance > 0
            return true
        else
            return false
        end
    end

    def close_account
       self.status = "closed"
    end

        end
