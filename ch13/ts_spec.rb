require_relative "tennis_scorer"
describe "TennisScorer", "basic scoring" do
  before(:each) do
    @ts = TennisScorer.new
  end
  it "should start with a score of 0-0" do
    @ts.score.should == "0-0"
  end
  it "should be 15-0 if the server wins a point" do
    @ts.give_point_to(:server)
    @ts.score.should == "15-0"
  end
  it "should be 0-15 if the receiver wins a point" do
    @ts.give_point_to(:receiver)
    @ts.score.should == "0-15"
  end
  it "should be 15-15 after they both win a point" do
    @ts.give_point_to(:server)
    @ts.give_point_to(:receiver)
    @ts.score.should == "15-15"
  end
  it "should be 40-0 after the server wins three points" do
    3.times { @ts.give_point_to(:server) }
    @ts.score.should == "40-0"
  end
  it "should be W-L after the server wins four points"
  it "should be L-W after the receiver wins four points"
  it "should be Deuce after each wins three points"
  it "should be A-server after each wins three points and the server gets one more"
  it "should be A-receiver after each wins three points and the receiver gets one more"
end
