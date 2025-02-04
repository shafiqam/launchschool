=begin
Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public,
so joe.grade will raise an error. Create a better_grade_than? method, that you can call
like so...

puts "Well done!" if joe.better_grade_than?(bob)
=end

class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    if self.grade > student.grade
      puts "Well done, #{self.name}!"
    else
      puts "Try harder, #{self.name}!"
    end
  end

  protected

  attr_reader :grade
end

joe = Student.new('Joe', 90)
bob = Student.new('Bob', 80)
# puts joe.grade # Error: protected method
joe.better_grade_than?(bob) # Well done, Joe!
bob.better_grade_than?(joe) # Try harder, Bob!
