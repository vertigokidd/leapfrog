require 'json'

hash = { "propensity" => 0.26532, "ranking" => "C" } 
json_string = hash.to_json


class Frogger

  def initialize(income, zip_code, age)
    @income = income
    @zip_code = zip_code
    @age = age
  end

end
