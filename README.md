# GoDuration for Ruby
[![Gem Version](https://badge.fury.io/rb/go_duration.svg)](https://badge.fury.io/rb/go_duration)
[![Build Status](https://travis-ci.org/justincampbell/go_duration_ruby.svg?branch=master)](https://travis-ci.org/justincampbell/go_duration_ruby)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'go_duration'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install go_duration

## Usage

### Parsing

```rb
require 'go_duration'

GoDuration.parse("2m30s") # => 150
```

### Generating

```rb
require 'go_duration'

GoDuration.generate(150) # => "2m30s"

require 'go_duration/core_ext'

150.to_go_duration # => "2m30"

require 'active_support/core_ext'

(2.hours + 45.minutes).to_go_duration # => "2h45m"
```
