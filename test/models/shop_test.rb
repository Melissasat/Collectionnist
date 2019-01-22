require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  setup do
    @shop = shops(:one)
    @shop.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 1)
    @shop.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 2)
    @shop.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 3)
    @shop.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 4)
    @shop.opening_times.create(:morning_start => "10:30", :morning_end => "15:00", :evening_start => "17:00", :evening_end => "20:00", index: 5)
    @shop.opening_times.create(:morning_start => "10:30", :morning_end => "20:00", index: 6)
    @shop.opening_times.create(index: 0)
  end
  
  test "days are in the good order" do
    t = "22 Jan 2019".to_datetime
    Timecop.travel(t) do
      expected_tab = [2, 3, 4, 5, 6, 0, 1]
      day_tab = @shop.get_days_order().map(&:index)
      assert_equal( expected_tab, day_tab)
    end
    t = "23 Jan 2019".to_datetime
    Timecop.travel(t) do
      expected_tab = [3, 4, 5, 6, 0, 1, 2]
      day_tab = @shop.get_days_order().map(&:index)
      assert_equal( expected_tab, day_tab)
    end
    t = "24 Jan 2019".to_datetime
    Timecop.travel(t) do
      expected_tab = [4, 5, 6, 0, 1, 2, 3]
      day_tab = @shop.get_days_order().map(&:index)
      assert_equal( expected_tab, day_tab)
    end
   end 
end
