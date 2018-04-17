require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class RiverTest <MiniTest::Test

  def setup
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])

  end

  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_in_river
    assert_equal(3, @river.fish().count())
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish4)
    assert_equal(4, @river.fish().count())
  end

  def test_remove_fish_from_river
    @river.add_fish_to_river(@fish4)
    @river.remove_fish_from_river(@fish4)
    assert_equal(0, @river.fish().count())
  end

end
