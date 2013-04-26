class StudentCourse < ActiveRecord::Base
  attr_accessible :course_id, :student_id
  belongs_to :course
  belongs_to :student
  after_create :notify_student

private
  def notify_student
    StudentMailer.new_student_courses(student, course).deliver
  end
end
