# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  total = a+b+c
  half = total/2;
  barf if (a <= 0 || b <= 0 || c <= 0)
  barf if (a+b <= half || b+c <= half || a+c <= half)
  result = :scalene
  result = :isosceles if (a == b ||b == c || a == c)
  result = :equilateral if (a == b && a == c)
  result
end

def barf
  raise TriangleError
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
