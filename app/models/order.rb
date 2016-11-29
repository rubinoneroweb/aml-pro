class Order < ActiveRecord::Base
    belongs_to :customer
    belongs_to :article
    has_many :jobs
    has_many :tasks
    
    validates :total_pieces, :presence => true
    
    self.per_page = 7
    
    def label_print
        self.customer.name + " - " + self.date_ric.strftime("%d/%m/%Y")
    end
    def label_expire
        self.customer.name + " - " + self.date_cons.strftime("%d/%m/%Y")
    end
    
    def expire
        self.date_cons.strftime("%d/%m/%Y")
    end
    
    def label_timespan
        t = self.date_cons - self.date_ric
        
        mm, ss = t.divmod(60)            #=> [4515, 21]
        hh, mm = mm.divmod(60)           #=> [75, 15]
        dd, hh = hh.divmod(24)           #=> [3, 3]
        puts "%d days, %d hours, %d minutes and %d seconds" % [dd, hh, mm, ss]
        
        
    end
    
    def label_start_stop
        self.customer.name + " - ricezione: " + self.date_ric.strftime("%d/%m/%Y") + " - consegna: " + self.date_cons.strftime("%d/%m/%Y")
    end
    
    def metalworks_applied
        self.tasks.map{|task| task.metalwork.id}.uniq
    end
    
    def pieces_remaining_for(work)
        
         self.total_pieces - self.tasks.where(metalwork: work).map{|task| task.quantity}.sum
        
        
    end
    
    
    
end
