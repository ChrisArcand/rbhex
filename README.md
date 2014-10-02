# rbhex

rbhex is a toolkit for building ncurses applications for text terminals in Ruby.

This is the meta-gem for rbhex, currently only containing the [rbhex-core][1] gem.

## Installation

Add this line to your application's Gemfile:

    gem 'rbhex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rbhex

## Components
* **rbhex-core**  
  Contains the core widgets and infrastructure of the rbhex toolkit
* **rbhex-extras (planned)**  
  Extras for rbhex, including base application classes to get up and running
  quickly. 
* **rbhex-spies (planned)**  
  Adds spies to your ncurses application. An example use could be
  monitoring the status of a web API. 

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rbhex/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[1]: https://github.com/ChrisArcand/rbhex-core
