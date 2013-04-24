class Course < ActiveRecord::Base
  attr_accessible :description, :location, :student_id, :title
  belongs_to :student
end
