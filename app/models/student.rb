class Student < ActiveRecord::Base
  attr_accessible :age, :bio, :full_name, :title, :email, :id
  has_many :courses, :through => :student_courses
  has_many :student_courses
end
