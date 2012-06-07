class TennisScorer
  OPPOSITE_SIDE_OF_NET = {
      :server => :receiver,
      :receiver => :server
  }
  def initialize
    @point = { :server => 0, :receiver => 0 }
  end
  def score
    if @point[:server] >= 4 and @point[:server] - @point[:receiver] >= 2
      "W-L"
    elsif @point[:receiver] >= 4 and @point[:receiver] - @point[:server] >= 2
      "L-W"
    elsif @point[:server] >=3 and @point[:server] == @point[:receiver]
      "Deuce"
    elsif @point[:server] >= 4 and @point[:server] - @point[:receiver] == 1
      "A-server"
    elsif @point[:receiver] >= 4 and @point[:receiver] - @point[:server] == 1
      "A-receiver"
    else
      server_score = point_to_score(@point[:server])
      receiver_score = point_to_score(@point[:receiver])
      "#{server_score}-#{receiver_score}"
    end
  end
  def give_point_to(player)
    other = OPPOSITE_SIDE_OF_NET[player]
    fail "Unknown player #{player}" unless other
    @point[player] += 1
  end
private
  def point_to_score(point)
    case point
    when 0..2
      point*15
    when 3
      40
    else
      point
    end
  end
end
