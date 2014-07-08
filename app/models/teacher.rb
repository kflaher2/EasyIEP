class Teacher < ActiveRecord::Base
  has_many :enrollments
  has_many :comments
  
end
