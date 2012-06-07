require 'test/unit'
require 'shoulda'
require_relative 'tennis_scorer'
class TennisScorerTest < Test::Unit::TestCase
  def assert_score(target)
    assert_equal target, @ts.score
  end
  context "Tennis scores" do
    setup do
      @ts = TennisScorer.new
    end
    should "start with a score of 0-0" do
      assert_score "0-0"
    end
    should "be 15-0 if the server wins a point" do
      @ts.give_point_to(:server)
      assert_score "15-0"
    end
    should "be 0-15 if the receiver wins a point" do
      @ts.give_point_to(:receiver)
      assert_score "0-15"
    end
    should "be 15-15 if the receiver wins a point" do
      @ts.give_point_to(:server)
      @ts.give_point_to(:receiver)
      assert_score "15-15"
    end
  end
end
