module BookKeeping
  VERSION = 3
end

class Squares
  def initialize( num )
    @num = num
  end
  def square_of_sum()
    (1..@num).sum**2
  end
  def sum_of_squares()
    (1..@num).map{ |n| n*n }.sum
  end
  def difference()
    (1..@num).sum**2 - (1..@num).map{ |n| n*n }.sum
  end
end
