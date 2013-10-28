require 'spec_helper'
require 'fakeweb'

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
    it "creates a url string with income, zip_code and age as params" do
      @frogger.create_request.should eq("http://internal.leapfrogonline.com/customer_scoring?income=50000&zipcode=60201&age=35")
    end
  end

  describe "#fetch" do

    it "makes an http get request to correct url" do
      FakeWeb.register_uri(:get, "http://internal.leapfrogonline.com/customer_scoring?income=50000&zipcode=60201&age=35", 
                           :body => "{ 'propensity': 0.26532, 'ranking': 'C' }")
      @frogger.fetch.should include("propensity")
    end

    it "returns an error if response is not 200" do
      FakeWeb.register_uri(:get, "http://internal.leapfrogonline.com/customer_scoring?income=50000&zipcode=60201&age=35", 
                           :body => "{ 'propensity': 0.26532, 'ranking': 'C' }",
                           :status => ["404", "Not Found"])
      @frogger.fetch.should include("error")
    end

    # it "returns a json response"
      
    # end
  end
  
end