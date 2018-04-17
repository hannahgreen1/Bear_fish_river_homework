require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class FishTest <MiniTest::Test

  def setup
    @fish1 = Fish.new("Haddock")
    @fish2 = Fish.new("Gold")
    @fish3 = Fish.new("Plaice")
  end

  def test_get_fish_type
    assert_equal("Haddock", @fish1.fish_type)
  end

end
