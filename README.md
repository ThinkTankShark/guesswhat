# Guesswhat

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/guesswhat`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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
Guesswhat::Product.image("shoes")           #=> URL with a picture of a shoe
Guesswhat::Product.image("bluepants")       #=> URL with a picture of a bluepants
```


###Guesswhat::Product.image(input)
---------------
***COMING SOON***

```ruby
Guesswhat::Product.image(input).size        #Specifiying the size of the image
Guesswhat::Product.image(input).color       #Specifiying the color of the image
Guesswhat::Product.image(input).type        #Specifiying the type of the image such as png, jpg, svg...
Guesswhat::Product.image(input).limit       #Specifiying the number of images needed
Guesswhat::Product.image(input).include     #Specifiying what item to include from the search
Guesswhat::Product.image(input).exclude     #Specifiying what item to exclude from the search
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ThinkTankShark/guesswhat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

