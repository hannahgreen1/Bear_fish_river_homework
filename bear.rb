class Bear

attr_reader :bear_name, :stomach

  def initialize(bear_name, stomach)
    @bear_name = bear_name
    @stomach = []
  end

 #  def get_bear_name(name)
 #   return @name
 # end

  def count_stomach
  @stomach.count
  end

  def add_fish_to_stomach(fish)
    @stomach.push(fish)
  end


end
