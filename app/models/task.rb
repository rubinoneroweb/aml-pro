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
    
    def left_in_order
        if self.order
         self.order.total_pieces - self.order.tasks.where(metalwork: self.metalwork).map{|tsk| tsk.total_done}.sum
        else
            0
        end
    end
    
    def done?
        false
        self.left_in_order<1 if self.left_to_do.present?
    end
    
    def total_time
        
        self.jobs.map{|j| j.haul_time.in_seconds}.sum / 60
    end
    
    def total_delay
        
        self.jobs.map{|j| j.delay ? j.delay : 0 }.sum
    end
    
    def total_speed
        if self.total_time==0
            0
        else
            self.total_done / (self.total_time)
        end
    end
    
    
    def alert_class
        if self.metalwork.speed.present? && self.total_speed>self.metalwork.speed 
            "good"
        else
            "bad"
        end
    end
    
end
