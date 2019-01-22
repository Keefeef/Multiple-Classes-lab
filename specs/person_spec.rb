require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @person_1 = Person.new("Bob", "18")
  end

  def test_get_age_name
    assert_equal("Bob", @person_1.name)
    assert_equal("18", @person_1.age)
  end

end 
