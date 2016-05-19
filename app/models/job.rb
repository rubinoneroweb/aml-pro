class Job < ActiveRecord::Base
    
    belongs_to :operator
    belongs_to :metalwork
end
