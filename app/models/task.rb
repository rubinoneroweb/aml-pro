class Task < ActiveRecord::Base
    
    belongs_to :order
    
    belongs_to :operator
    
    belongs_to :metalwork
end
