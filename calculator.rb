class Calculator
  attr_accessor :total

  def initialize
    @total = 0
  end

  def add(num_1, num_2)
    sum = num_1 + num_2
    @total = sum + @total
  end
end

