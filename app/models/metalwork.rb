class Metalwork < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    
    belongs_to :machine
    belongs_to :tool
    
     has_and_belongs_to_many :articles
    
    
end
