module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      -3.213
    elsif balance < 1000
      0.5
    elsif balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + interest_rate(balance).abs / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    return Float::Infinity if current_balance.negative?
    return 0 if current_balance >= desired_balance

    years_before_desired_balance(annual_balance_update(current_balance), desired_balance) + 1
  end
end
