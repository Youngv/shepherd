class StuMailer < ActionMailer::Base
  default from: "ootyoungtoo@gmail.com"
  def student_information_email(student)
    @student = student
    @url = student_url(@student, host: 'localhost')
    mail(:to => @student.email, :subject => "Confirm Your Information")
  end
end
