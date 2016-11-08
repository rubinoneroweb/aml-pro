class Job < ActiveRecord::Base
    
    belongs_to :operator
    belongs_to :metalwork
    belongs_to :order
    belongs_to :task
    
    def haul
        
        
    end
    
    
end
