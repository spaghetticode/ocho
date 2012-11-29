# Ocho

Read a file and convert the obtained string to utf-8. Suitable for Ruby < 1.9

## Installation

Add this line to your application's Gemfile:

    gem 'ocho'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ocho

## Usage

```ruby
  utf8_text = Ocho.read(some_extoteric_filename) #=> ...

  Ocho.encoding(utf8_text) #=> ascii
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
