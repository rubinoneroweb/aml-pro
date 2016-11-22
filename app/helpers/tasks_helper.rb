module TasksHelper
    def format_total_time(seconds)
        Time.at(seconds).utc.strftime("%H:%M:%S")
    end
    
end
