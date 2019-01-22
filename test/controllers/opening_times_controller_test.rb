require 'test_helper'

class OpeningTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
  end

  test "times value should be equals" do
    assert_equal( "10:30 - 15:00,", opening_times(:one).get_morning_openings())
    assert_equal( "17:00 - 20:00", opening_times(:one).get_evening_openings())
    assert_equal( "10:30 - 20:00", opening_times(:two).get_morning_openings())
    assert_equal(  "&nbsp;", opening_times(:two).get_evening_openings())
    assert_equal(  " - Fermé - ", opening_times(:three).get_morning_openings())
    assert_equal(  "&nbsp;", opening_times(:three).get_evening_openings()) 
  end
  
end
