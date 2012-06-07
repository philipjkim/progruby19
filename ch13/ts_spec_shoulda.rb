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
    context "where the server wins a point" do
      setup do
        @ts.give_point_to(:server)
      end
      should "be 15-0" do
        assert_score "15-0"
      end
      context "and the opponent wins a point" do
        setup do
          @ts.give_point_to(:receiver)
        end
        should "be 15-15" do
          assert_score "15-15"
        end
      end
    end
    should "be 0-15 if the receiver wins a point" do
      @ts.give_point_to(:receiver)
      assert_score "0-15"
    end
  end
end
