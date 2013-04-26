class StudentMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_student_courses(student, course)
    @student = student
    @course = course
    mail(to: student.email, 
      subject: 'You Have A New Course!', 
      format: 'plain-text' )
  end
end
