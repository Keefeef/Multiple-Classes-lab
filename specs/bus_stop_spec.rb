require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../person")

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop_1 = BusStop.new
    @person_1 = Person.new("Kim", "21")
  end

  def test_add_person_to_que
    @bus_stop_1.add_person_to_que(@person_1)
    assert_equal(1, @bus_stop_1.que.count)
  end

  def test_pop_off_passenger
    @bus_stop_1.add_person_to_que(@person_1)
    assert_equal(@person_1, )



end
