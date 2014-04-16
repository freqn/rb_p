require 'pry'

class Account
  attr_reader :name, :balance
  
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    if pin_number == pin
        puts "Balance: $#{@balance}."
    else
        puts pin_error
    end
  end
  
binding.pry

  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew $#{sprintf("%.2f", amount)}\nNew balance: $#{sprintf("%.2f", @balance)}"
    else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number ==  pin
      @balance += amount
      puts "Deposited $#{sprintf("%.2f", amount)}\nNew balance: $#{sprintf("%.2f", @balance)}"
    else
      puts pin_error
    end
  end

  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("My account", 564386.63)
checking_account.deposit(1234, 672.50)