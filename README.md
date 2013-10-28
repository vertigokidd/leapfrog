## Leapfrogger

A demo gem that takes an individual's income, zip code and age and makes an API call to a hypothetical server that returns a JSON response.

### Installation

Clone the repo to a local directory. Build the gem on your machine using `gem build leapfrogger.gemspec`. Then install the gem using `gem install ./leapfrogger-0.0.0.gem`.

### Testing

Tests are written using Rspec. To run them, use the command `rspec spec` from the gem's root directory.

### Examples

```require 'leapfrogger'

frog = Leapfrogger.new(50000, 60602, 35)  # => Instantiates a leapfrogger object

frog.fetch   # => Makes a call to the API, returns either an error or the JSON object```