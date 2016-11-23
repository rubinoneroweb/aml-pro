class Article < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    mount_uploader :drawing, PictureUploader
    mount_uploader :spec, PictureUploader
    
    validates :code,  uniqueness: {message: "Esiste già un articolo con questo codice!"}
    validates :total_pieces, presence: true
    
    has_many :orders
    belongs_to :customer
    
    has_and_belongs_to_many :metalworks
    
    self.per_page = 7
    
    
    def label_desc
        self.code + " - " + self.description
        
    end
    
    
  

end
