# Bank Account


class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
    return @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
    return @balance
  end

  def balance
    return @balance
end
  def interest_rate
    return @interest_rate
  end

  def gain_interest
    @balance = @balance * @interest_rate
    return @balance
  end
end



acc_1 = BankAccount.new(200.00, 0.2)

puts acc_1.balance
puts acc_1.deposit(10)
puts acc_1.gain_interest
