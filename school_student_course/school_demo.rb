class School
  attr_accessor :name, :students, :courses

  def initialize(name)
    @name = name
    @students = []
    @courses = []
  end

  def add_student(name, age, gender, courses)
    @students << Student.new(name, age, gender, courses)
  end

  def add_course(name, students)
    @courses << Course.new(name, students)
  end

  def find_student_in_school(name)
    @students.detect { |student| student.name == name}
  end

  def find_course_in_school(name)
    @courses.detect { |course| course.name == name}
  end

  def show_student_information(name)
    puts find_student_in_school(name).full_infomation
  end

  def show_course_information(name)
    puts find_course_in_school(name).arerage_grade_of_course(name)
  end

  class Student
    attr_accessor :name, :age, :gender, :courses

    def initialize(name, age, gender, courses)
      @name = name
      @age = age
      @gender = gender
      @courses = courses
    end

    def full_infomation
      puts "Name:" + @name
      puts "Age:" + @age.to_s
      puts "Gender:" + @gender
      puts "Courses and Grade:" + @courses.to_s
    end
  end

  class Course
    attr_accessor :name, :students

    def initialize(name, students)
      @name = name
      @students = students
    end

    def arerage_grade_of_course(course)
      @students.each do |student|
        sum += student[course.to_sym].to_i ###unfinshed
      end
    end
  end
end

school = School.new("Harvard")
school.add_student("Victor", 21, "male", {:English => 90, :Chinese => 80})
school.add_student("Young", 12, "female", {:English => 85, :Chinese => 65})
school.add_course("English", {"Victor" => 90, "Young" => 85})
school.add_course("Chinese", {"Victor" => 80, "Young" => 65})
school.find_student_in_school("Victor")
school.show_student_information("Victor")
school.find_course_in_school("English")
school.show_course_information("English")
