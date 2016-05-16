module ApplicationHelper

  def total_balance
    credits_total + debits_total
  end

  def credits_array
    Record.select { |record| record.amount > 0 }
  end

  def credits_total
    credits_array.reduce(0) {|total, record| total + record.amount}
  end

  def debits_array
    Record.select { |record| record.amount < 0 }
  end

  def debits_total
    debits_array.reduce(0) {|total, record| total + record.amount}
  end

end
