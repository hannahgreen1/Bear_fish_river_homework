require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest <MiniTest::Test

  def setup
    @bear_name = Bear.new("Yogi", [])
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear_name.bear_name)
  end

  def test_empty_stomach
    assert_equal(0, @bear_name.count_stomach)
  end

  def test_add_fish_to_stomach
    @bear_name.add_fish_to_stomach(@stomach)
    assert_equal(1, @bear_name.count_stomach)
  end

   def test_noise
     assert_equal("ROAR", @bear_name.noise())
   end


end
