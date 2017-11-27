class Triangle
  def initialize(length1, length2, length3)
    @length1 = length1.to_i
    @length2 = length2.to_i
    @length3 = length3.to_i
  end

  def equilateral?
    (@length1 == @length2) & (@length1 == @length3)
  end

  def isoceles?
    ((@length1 == @length2) & (@length1 != @length3)) |
    ((@length1 == @length3) & (@length1 != @length2)) |
    ((@length2 == @length3) & (@length1 != @length2))
  end

  def scalene?
    (@length1 != @length2) & (@length1 != @length3)
  end

  def triangle?
    !(((@length1 + @length2) <= (@length3)) | ((@length1 + @length3) <= (@length2)) | ((@length2 + @length3) <= (@length1)))
  end

end
