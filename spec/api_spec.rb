require 'spec_helper'

describe Frogger do

  before :each do
    @frogger = Frogger.new(50000, 60201, 35)
  end

  describe "#new" do
    it "takes three parameters and returns a Frogger object" do
      @frogger.should be_an_instance_of Frogger
    end
  end
  
end