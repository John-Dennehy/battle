
class Player
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def attacked
    damage = 10
    @hit_points -= damage unless (@hit_points - damage) < 0
  end


end
