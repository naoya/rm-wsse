# RmWsse

gem for RubyMotion to creates WSSE header string.

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

Add this line to your application's Gemfile:

    gem 'rm-wsse'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rm-digest

## Copyright

* Copyright (c) 2013- Naoya Ito (@naoya_ito)
* License
  * Apache License, Version 2.0

## Installation

Add this line to your application's Gemfile:

    gem 'fluent-plugin-config-pit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-config-pit

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
