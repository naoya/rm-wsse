# RmWsse

[![Build Status](https://travis-ci.org/naoya/rm-wsse.png?branch=master)](https://travis-ci.org/naoya/rm-wsse)

gem for RubyMotion, to create WSSE header string.

It depends:

- rm-digest

## Usage

```ruby
wsse = RmWsse.wsse_header('username', 'password')

## Example: w/ BubbleWrap
BW::HTTP.post('http://example.com/api', {
 :headers => {
   'X-WSSE' => wsse
 }
})
```

## Installation

Add these lines to your application's Gemfile:

    gem 'rm-wsse'
    gem 'bubble-wrap'
    
If Gemfile does not exist, run ```bundle init``` then created it.

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rm-wsse

Then, also add these lines to your application's Rakefile:

    require 'rm-wsse'
    require 'bubble-wrap'

Your Rakefile looks like this:

```Ruby
# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'rm-wsse'
require 'bubble-wrap'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Your App name'
end
```


## Copyright

* Copyright (c) 2013- Naoya Ito (@naoya_ito)
* License
  * Apache License, Version 2.0

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
