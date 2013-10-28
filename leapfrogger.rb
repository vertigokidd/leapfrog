require 'json'
require 'net/http'

class Leapfrogger

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
    response = Net::HTTP.get_response(URI(create_request))
    if response.code == "200"
      response.body
    else
      "There was an error"
    end
  end

end
