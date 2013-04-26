class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :age, :bio, :full_name, :title
  has_many :courses, :through => :student_courses
  has_many :student_courses

  #validates_presence_of :full_name
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
