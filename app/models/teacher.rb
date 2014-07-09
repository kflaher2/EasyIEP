class Teacher < ActiveRecord::Base
  has_many :enrollments
  has_many :comments
  
  has_secure_password
  
end
