#!usr/bin/ruby -w
class School
  attr_writer :school,:address,:students,:courses
  attr_reader :school,:address,:students,:courses

  def initialize(school,address,students,courses)
    @school = school
    @address = address
    @students = students
    @courses = courses
  end

  def count
    @students.length
  end
end

class Student
  attr_writer :name,:age,:courses
  attr_reader :name,:age,:courses

  def initialize(name,age,courses)
    @name = name
    @age = age
    @courses = courses
  end

  def adult
    if @age > 18
      return @name
    end
  end
end

class Course
  attr_writer :course, :students
  attr_reader :course, :students

  def initialize(course, students)
    @course = course
    @students = students
  end

  def count()
    @students.length
  end

  def find(student)
    if @students.include?(student)
      return @course
    end
  end
end

school1 = School.new("Harvard","NO.28",["young", "victor", "peter"], ["English", "Math", "Chinese"])
z = school1.count()
puts "There are #{z} students in school."
x = school1.students()
puts "students are #{x.join(",")}"
y = school1.school
puts "school name is #{y}"


stu1 = Student.new("young", 20, ["English", "Math"])
stu2 = Student.new("victor", 20, ["Chinese", "Math"])
stu3 = Student.new("peter", 20, ["English", "Chinese"])

course1 = Course.new("Math",["young","victor"])
course2 = Course.new("English",["young","peter"])
course3 = Course.new("Math",["peter","victor"])

p = stu1.adult
puts "#{p}"

q = find('young')
puts "#{q}"