require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class BusTest < Minitest::Test

  def setup
    @bus_1 = Bus.new(22, "Ocean Terminal")
  end

  def  test_get_route_and__destination
    assert_equal(22, @bus_1.route_num)
    assert_equal("Ocean Terminal", @bus_1.destination)
  end

end
