class Triangle
  # write code here

  attr_accessor :sideA, :sideB, :sideC

  def initialize (sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    if (@sideA <= 0 || @sideB <= 0 || @sideC <= 0)
      raise TriangleError
    elsif ((@sideA + @sideB <= sideC) || (@sideA + @sideC <= @sideB || (@sideB + @sideC <= @sideA)))
      raise TriangleError
    else
      if (self.sideA == self.sideB && self.sideA == self.sideC && self.sideB == self.sideC )
        :equilateral
      elsif ((self.sideA == self.sideB && self.sideA != self.sideC) ||
        (self.sideA == self.sideC && self.sideA != self.sideB) ||
        (self.sideB == self.sideC && self.sideA != self.sideC))
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def sizeError
      "side has no size or invalide size"
    end

    def triangleInequality
      "side totals can not make triangle"
    end
  end

end
