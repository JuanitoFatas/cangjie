# Cangjie

[![https://commons.wikimedia.org/wiki/File:Cangjie2.jpg#/media/File:Cangjie2.jpg](https://upload.wikimedia.org/wikipedia/commons/5/53/Cangjie2.jpg)](https://en.wikipedia.org/wiki/Cangjie)

Cangjie invented Chinese characters. I invite him to help us recognize Chinese in RubyGems world.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "cangjie"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cangjie

## Usage

```ruby
CHINESE = "讓我們再一次把紅寶石變得更美好"
ENGLISH = "Let's make Ruby great again"
CHI_ENG = "唐納·川普 Donald John Trump"

Cangjie.has_chinese? CHINESE # => true
Cangjie.all_chinese? CHINESE # => true

Cangjie.has_chinese? ENGLISH # => false
Cangjie.all_chinese? ENGLISH # => false

Cangjie.has_chinese? CHI_ENG # => true
Cangjie.all_chinese? CHI_ENG # => false
```

If you love freedom, require this freedom patch:

```
require "cangjie/core_ext"

"讓我們再一次把紅寶石變得更美好".has_chinese? # => true
"讓我們再一次把紅寶石變得更美好".all_chinese? # => true

"Let's make Ruby great again".has_chinese? # => false
"Let's make Ruby great again".all_chinese? # => false

"唐納·川普 Donald John Trump".has_chinese? # => true
"唐納·川普 Donald John Trump".all_chinese? # => false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JuanitoFatas/cangjie.

## LICENSE

[UNLICENSE](/UNLICENSE)
