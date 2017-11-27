require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
  erb(:input)
end

get('/output') do
  @length1 = params.fetch("length1")
  @length2 = params.fetch("length2")
  @length3 = params.fetch("length3")
  new_triangle = Triangle.new(@length1, @length2, @length3)
    if new_triangle.triangle?
      if new_triangle.equilateral?
        @triangle = "This is a equilateral."
      elsif new_triangle.isoceles?
        @triangle = "This is a isosceles."
      else
        @triangle = "This is a scalene."
      end
    else @triangle = "This is not a triangle."
    end
  erb(:output)
end
