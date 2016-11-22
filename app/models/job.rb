class Job < ActiveRecord::Base
    
    belongs_to :operator
    belongs_to :metalwork
    belongs_to :order
    belongs_to :task
    
    def haul
        
       # self.completed_at - self.started_at
       time_diff = TimeDifference.between(self.completed_at, self.started_at)
      time_diff.in_general[:minutes].to_s + "' " + time_diff.in_general[:seconds].to_s+"''"
        
    end
    
    def haul_time
        TimeDifference.between(self.completed_at, self.started_at)
    end
    
    
    def speed
       time_diff = TimeDifference.between(self.completed_at, self.started_at).in_minutes
       q_tot / time_diff
    end
    
    def q_tot
        if self.q_fin.present?
            self.q_fin - self.q_in
        else
            0
        end
    end
    
    def alert_class
        if self.task.present? && self.task.speed.present? && self.speed.present? && self.speed>self.task.speed 
            "good"
        else
            "bad"
        end
    end
    
    
    
    
end
