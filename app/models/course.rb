class Course < ActiveRecord::Base
  attr_accessible :description, :location, :student_id, :title
  has_many :students, :through => :student_courses
  has_many :student_courses
end
