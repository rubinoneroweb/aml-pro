class Job < ActiveRecord::Base
    
    belongs_to :operator
    belongs_to :metalwork
    belongs_to :order
    
    def haul
        
        
    end
    
    
end
