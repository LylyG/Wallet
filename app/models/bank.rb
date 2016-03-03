class Bank < ActiveRecord::Base
  attr_reader :amount, :balance, :recipient

  def initialize (amount, recipient)
    @amount = amount
    @recipient = recipient
  end

  def total_spent
  end

  def total_transactions
  end

  def biggest_expense_ever
    Bank.order(:debits).last
  end

  def biggest_expense_current
  end

  def highest_recipient
    Bank.order(:recipient).last
  end

  def negative_balance
    if @balance < 0
      puts "Your expenses are too high!"
    end
  end

  def self.current_balance
    balance = []
    balance << @amount
    balance.reduce
  end

end
