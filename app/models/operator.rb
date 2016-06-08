class Operator < ActiveRecord::Base
    
     mount_uploader :picture, PictureUploader
     
     has_many :tasks
     has_many :jobs
     
     def full_name
          self.name + " " + self.surname
     end
     
end
