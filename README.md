# Guesswhat

[![Gem Version](https://badge.fury.io/rb/guesswhat.svg)](https://badge.fury.io/rb/guesswhat)

Guesswhat is essentially a tool that allows you to get images from Google Image Search based on the item category you are passing in.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'guesswhat'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guesswhat

## Usage

```ruby
Guesswhat::Product.image                          #=> URL with a picture of a shoe by default
Guesswhat::Product.image(item: "bluepants")       #=> URL with a picture of a blue pants
Guesswhat::Product.image(size: "medium")          #=> URL with a picture of a shoe with medium size
Guesswhat::Product.image(limit: 2)                #=> URL with 2 pictures of a shoe
Guesswhat::Product.image(type: "png")             #=> URL with a picture of a shoe with png format
Guesswhat::Product.image(color: "gray")           #=> URL with a picture of a grayscale shoe
```
***Default Values***
```ruby
Guesswhat::Product.image                          #=> item: "Shoes", size: "xlarge", limit: 10, type: "png", color: "gray"
```

Parameters to pass in:
- 'size' returns images of a specified size, where size can be one of: icon, small, medium, large, xlarge, xxlarge, and huge. (string)
- 'limit' Number of search results to return (integer)
- 'type' Returns images of a specified type. Some of the allowed values are: bmp, gif, png, jpg, svg, pdf, ... (string)
- 'color' Returns black and white, grayscale, or color images: mono, gray, and color. (string)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ThinkTankShark/guesswhat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

