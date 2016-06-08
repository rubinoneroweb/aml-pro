class Order < ActiveRecord::Base
    belongs_to :customer
    belongs_to :article
    has_many :jobs
    has_many :tasks
    
    
    def label_print
        self.customer.name + " - " + self.date_ric.strftime("%d/%m/%Y")
    end
    
    def label_expire
        self.customer.name + " - " + self.date_cons.strftime("%d/%m/%Y")
    end
    
    def label_start_stop
        self.customer.name + " - ricezione: " + self.date_ric.strftime("%d/%m/%Y") + " - consegna: " + self.date_cons.strftime("%d/%m/%Y")
    end
end
