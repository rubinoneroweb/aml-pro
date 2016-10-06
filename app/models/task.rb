class Task < ActiveRecord::Base
    
    #belongs_to :ordr, :foreign_key=>'order_id', :class_name=>'Order'
    alias_attribute :ordr, :order
    
    belongs_to :order
    
    belongs_to :operator
    
    belongs_to :metalwork
    
   # validates :quantity, inclusion: { in: 1..(Order.find(self.order_id).pieces_remaining_for(self.metalwork.id)), message:"Numero di pezzi troppo alto"}
    
    def getOrder
        Order.find(self.order_id)
    end
    
end
