require('rspec')
require('triangle')

describe(Triangle) do

  describe("equilateral?") do
    it("returns equilateral if if all lengths are equal") do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.equilateral?).to(eq(true))
    end
  end

  describe("isoceles?") do
    it("returns isoceles if only two lengths are equal") do
      test_triangle = Triangle.new(2,2,3)
      expect(test_triangle.isoceles?).to(eq(true))
    end
  end

  describe("scalene?") do
    it("returns scalene if no lengths are equal") do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.scalene?).to(eq(true))
    end
  end

  describe("triangle?") do
    it("returns not a triangle if two lengths are equal or lower than third one") do
      test_triangle = Triangle.new(1,3,4)
      expect(test_triangle.triangle?).to(eq(false))
    end
  end

end
