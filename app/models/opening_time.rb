class OpeningTime < ApplicationRecord
  belongs_to :shop

  def get_morning_openings
    if self.morning_start && self.morning_end
      if self.evening_start && self.evening_end
        return "#{self.morning_start} - #{self.morning_end},"
      else
         return "#{self.morning_start} - #{self.morning_end}"
      end
    else
      return " - Fermé - "
    end
    
  end
  
  def get_evening_openings
    if self.evening_start && self.evening_end
      return "#{self.evening_start} - #{self.evening_end}"
    else
      return "&nbsp;".html_safe()
    end
  end

end
