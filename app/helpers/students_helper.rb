module StudentsHelper
  def shorten_bio(student)
    truncate student.bio, length: 6 
  end
end
