class Job < ActiveRecord::Base
    
    belongs_to :operator
    belongs_to :metalwork
    delegate :order, :to => :task,   allow_nil: true
    belongs_to :task
    delegate :article, :to => :order , allow_nil: true
    
    def haul
        
       # self.completed_at - self.started_at
       time_diff = TimeDifference.between(self.completed_at, self.started_at)
      time_diff.in_general[:minutes].to_s + "' " + time_diff.in_general[:seconds].to_s+"''"
        
    end
    
    def haul_time
        TimeDifference.between(self.completed_at, self.started_at)
    end
    
    
    def speed
       time_diff = TimeDifference.between(self.completed_at, self.started_at).in_seconds
       (q_tot / time_diff) * 60
    end
    
    def q_tot
        if self.q_fin.present? && self.q_in.present?
            self.q_fin - self.q_in
        else
            0
        end
    end
    
    def alert_class
        if self.task.present? && self.task.metalwork.speed.present? && self.speed>self.task.metalwork.speed 
            "good"
        else
            "bad"
        end
    end
    
    
    
    
end
