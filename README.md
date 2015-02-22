# Melt [![Build Status](https://travis-ci.org/zizkovrb/melt.svg?branch=master)](https://travis-ci.org/zizkovrb/melt)

[There is no way to unfreeze a frozen object.](http://ruby-doc.org/core-2.2.0/Object.html#method-i-freeze) Really? Have you ever heard about icebergs or icicles? What about melting?

![no way to unfreeze?](http://media.giphy.com/media/Et9WoN2Aejm3C/giphy.gif)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'melt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install melt

## Usage

```ruby
require 'melt'

icicle = "----->"

# winter
icicle.freeze
icicle.frozen? #=> true

# spring
icicle.melt
icicle.frozen? #=> false
```

## Contributing

1. Fork it ( https://github.com/zizkovrb/melt/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
