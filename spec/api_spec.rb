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

  describe "#income" do
    it "returns the correct income" do
      @frogger.income.should eql(50000)
    end
  end

  describe "#zip_code" do
    it "returns the correct zip_code" do
      @frogger.zip_code.should eql(60201)
    end
  end

  describe "#age" do
    it "returns the correct age" do
      @frogger.age.should eql(35)
    end
  end

  describe "#create_request" do
    it "creates a url string with income, zip_code and age" do
      @frogger.create_request.should eq("http://internal.leapfrogonline.com/customer_scoring?income=50000&zipcode=60201&age=35")
    end
  end
  
end