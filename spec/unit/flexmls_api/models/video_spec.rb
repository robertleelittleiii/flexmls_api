require './spec/spec_helper'

describe Video do

  it "responds to" do
    Video.should respond_to(:find_by_listing_key)
    Video.new.should respond_to(:branded?)
    Video.new.should respond_to(:unbranded?)
  end

  it "has a type" do
    Video.new(:Type => "branded").branded?.should == true
    Video.new(:Type => "unbranded").branded?.should == false
    Video.new(:Type => "unbranded").unbranded?.should == true
    Video.new(:Type => "branded").unbranded?.should == false
  end

  describe "find videos by listing id"  do
    before do
      stub_auth_request
      stub_api_get('/listings/1234/videos','listings/videos_index.json')
    end

    it "should get an array of videos" do
      p = Video.find_by_listing_key('1234')
      p.should be_an(Array)
      p.length.should == 2
    end

  end

end
