require 'json'

hash = { "propensity" => 0.26532, "ranking" => "C" } 
json_string = hash.to_json


puts json_string