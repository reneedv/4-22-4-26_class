class Student < ActiveRecord::Base
  attr_accessible :age, :bio, :full_name, :title, :email, :id
  has_many :courses, :through => :student_courses
  has_many :student_courses

  validates_presence_of :full_name
  #validates :full_name, presence: true

  validate :something

  before_create :set_defaults

private
  def something

  end

  def set_defaults
    self.title = "Student" if title.blank?
  end

end
