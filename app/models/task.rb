class Task < ActiveRecord::Base
    
    #belongs_to :ordr, :foreign_key=>'order_id', :class_name=>'Order'
    alias_attribute :ordr, :order
    
    
    
    belongs_to :order
    
    belongs_to :operator
    
    belongs_to :metalwork
    
    has_many :jobs
    
   # validates :quantity, inclusion: { in: 1..(Order.find(self.order_id).pieces_remaining_for(self.metalwork.id)), message:"Numero di pezzi troppo alto"}
    
    def getOrder
        Order.find(self.order_id)
    end
    
    def total_done
        self.jobs.map{|j| j.q_tot}.sum
    end
    
    def left_to_do
        self.quantity - self.total_done if self.quantity.present?
    end
    
    def done?
        false
        self.left_to_do<1 if self.left_to_do.present?
    end
    
    def total_time
        
        self.jobs.map{|j| j.haul_time.in_seconds}.sum
    end
    
    def total_speed
        if self.total_time==0
            0
        else
            self.total_done / (self.total_time / 60)
        end
    end
    
end
