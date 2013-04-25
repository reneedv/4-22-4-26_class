class Assignment < ActiveRecord::Base
  attr_accessible :details, :done, :due_date, :title
  scope :completed, where(done: true)
  scope :pending, where(done: false)
  before_save :fix_done
private
  def fix_done
    self.done = false if done.nil?
    true # callbacks must not return false
  end
end
