class Article < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    mount_uploader :drawing, PictureUploader
    
    validates :code,  uniqueness: {message: "Esiste già un articolo con questo codice!"}
    
    has_many :orders
    belongs_to :customer
    
    
    def label_desc
        self.code + " - " + self.description
        
    end
end
