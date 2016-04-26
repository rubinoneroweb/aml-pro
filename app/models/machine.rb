class Machine < ActiveRecord::Base
    
    mount_uploader :picture, PictureUploader
    
    
    has_many :tools
    has_many :metalworks
end
