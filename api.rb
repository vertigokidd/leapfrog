require 'json'

hash = { "propensity" => 0.26532, "ranking" => "C" } 
json_string = hash.to_json


class Frogger

  attr_reader :income, :zip_code, :age

  def initialize(income, zip_code, age)
    @income = income
    @zip_code = zip_code
    @age = age
  end

  def create_request
    "http://internal.leapfrogonline.com/customer_scoring?income=#{@income}&zipcode=#{@zip_code}&age=#{@age}"
  end

  def fetch
    
  end

end
