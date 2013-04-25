require 'spec_helper'

describe Student do
  it "should require a full name" do
    student = Student.new
    student.should_not be_valid
  end

  it "should have a default title of Student" do
    student = Student.create(full_name: 'Tester')
    student.title.should eq "Student"
  end

  it "should have a default title of Student if the title is blank" do
    student = Student.create(full_name: 'Tester', title: '')
    student.title.should eq "Student"
  end

end
