class Operator < ActiveRecord::Base
    
     mount_uploader :picture, PictureUploader
     
     has_many :tasks
     has_many :jobs
end
