require 'test_helper'

class BankTest < ActiveSupport::TestCase
  test "show current balance" do
    first = Bank.create(amount: 21.36, recipient: "Devone")
    second = Bank.create(amount: -9.81, recipient: "Rent")
    assert_equal 11.55, second.balance
  end

end
