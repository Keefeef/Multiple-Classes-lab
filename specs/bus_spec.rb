require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")


class BusTest < Minitest::Test

  def setup
    @bus_1 = Bus.new(22, "Ocean Terminal")


    @person_1 = Person.new("Jim", "25")
    @person_2 = Person.new("Tim", "19")
    @person_3 = Person.new("Bob", "27")
    @person_4 = Person.new ("Andrew", "40")


    @bus_stop_1 = BusStop.new
    @bus_stop_2 = BusStop.new

    @bus_stop_1.add_person_to_que(@person_1)
    @bus_stop_1.add_person_to_que(@person_2)

    @bus_stop_2.add_person_to_que(@person_3)
    @bus_stop_2.add_person_to_que(@person_4)

    @bus_route = [@bus_stop_1, @bus_stop_2]


  end

  def  test_get_route_and__destination
    assert_equal(22, @bus_1.route_num)
    assert_equal("Ocean Terminal", @bus_1.destination)
  end

  def test_count_passenger
    assert_equal(0, @bus_1.passengers.count)
  end

  def test_add_passenger
    @bus_1.add_passenger(@person_1)
    assert_equal(1, @bus_1.passengers.count)
    assert_equal(@person_1, @bus_1.passengers.last)
  end

def test_drop_off_passenger
  @bus_1.add_passenger(@person_1)
  @bus_1.drop_off_passenger(@person_1)
  assert_equal(0, @bus_1.passengers.count)
end

def test_remove_all_passengers
  @bus_1.add_passenger(@person_1)
  @bus_1.add_passenger(@person_2)
  assert_equal([],@bus_1.remove_all_passengers)
end

def test_

def test_pickup_from__stop
  #Method should remove all passengers from que array and
  #add them bus passengers array
  #For person in que delete person from que and array
  #and push person into bus passengers array






end
