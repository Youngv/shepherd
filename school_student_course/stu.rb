#!usr/bin/ruby -w
class School
  def initialize
    @schoolName = schoolName
    @address = address
    @students = students
    @courses = courses
  end
  def set_schoolname=(value)
    @schoolName = value
  end
  def set_address=(valus)
    @address = value
  end
  def get_schoolname
    @schoolName
  end
  def get_address
    @address
  end
end

class Student < School
  def initialize(name,age)
    @name = name
    @age = age
    @courses = courses
  end
end
class Course < School
  def initialize(coursename)
    @name = name
  end
end
