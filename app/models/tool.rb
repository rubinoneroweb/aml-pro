class Tool < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    
    belongs_to :machine
    has_many :metalworks
    
    before_destroy :check_for_metalworks
    
    def check_for_metalworks
        if metalworks.count > 0
          errors.add :base, "Esiste un processo legato a questo strumento! Impossibile eliminare."
          return false
        end
    end
    
    def label_machine
        self.machine.name + " - " + self.name
    end
    
end
