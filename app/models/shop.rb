class Shop < ApplicationRecord
  has_many :opening_times
  
  def get_days_order
    days_of_week = {
      0 => (Time.now + 0.days).strftime('%w'),
      1 => (Time.now + 1.days).strftime('%w'),
      2 => (Time.now + 2.days).strftime('%w'),
      3 => (Time.now + 3.days).strftime('%w'),
      4 => (Time.now + 4.days).strftime('%w'),
      5 => (Time.now + 5.days).strftime('%w'),
      6 => (Time.now + 6.days).strftime('%w')
    }
    return self.opening_times.sort_by{|x| days_of_week.index((x.index).to_s) }
  end
  
end


