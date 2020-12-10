class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  #The Triangle Inequality Theorem states that the sum of any 2 sides 
  #of a triangle must be greater than the measure of the third side.
   
  def kind
    if !(side_1 > 0 && side_2 > 0 && side_3 > 0) || ((side_1 >= side_2 + side_3) || (side_2 >= side_1 + side_3) || (side_3 >= side_1 + side_2))
      begin
        raise TriangleError
      end
    else
      if side_1 == side_2 && side_2 == side_3
        :equilateral
      elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
        :isosceles
      else
        :scalene
      end
    end
  end


  class TriangleError < StandardError
  end
end