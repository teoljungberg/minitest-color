# Minitest::Color

A color format for [minitest](https://github.com/seattlerb/minitest)

## Installation

Add this line to your application's Gemfile:

    gem 'minitest-color'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-color

## Requirements

Minitest >= 5.0.0

## Usage

Either pass `--color` as an argument while running your tests,
or `require 'minitest/color'` in your tests

## What's the difference?
It colorizes your tests depending on their success

- `pass` => Green
- `skip` => Yellow
- `fail` => Red

## Contributing

1. Fork it ( http://github.com/teoljungberg/minitest-color/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
