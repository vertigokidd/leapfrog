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
      @book.income.should eql(50000)
    end
  end

  describe "#zip_code" do
    it "returns the correct zip_code" do
      @book.zip_code.should eql(60201)
    end
  end

  describe "#age" do
    it "returns the correct age" do
      @book.age.should eql(35)
    end
  end
  
end