# DictateCSS

An intuitive and very DRY CSS framework that lets you dictate styling with classes that behave as they are named.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dictate_css'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dictate_css

## Setup

Run this in your console to create the styles in your vendor/assets/stylesheets directory

```
rails g dictate_css styles
```

## Usage

Pick and choose which stylesheets to include in your asset pipeline. **base is not optional.**

```
# app/assets/stylesheets/application.css

*= require "dictate_css/base"
*= require "dictate_css/colors"
*= require "dictate_css/floating"
*= require "dictate_css/hide_show"
```

## Examples

```html
<div class="inline-block">
  My style is display: inline-block;
</div>

<div class="relative">
  My style is position: relative;
</div>

<div class="absolute">
  My style is position: absolute;
</div>

<div class="text-right">
  My style is text-align: right;
</div>

<div class="width-100">
  My style is width: 100%;
</div>

<div class="hide-on-mobile">
  My style is
  @media only screen and (max-width: 768px) {
    .hide-on-mobile {
      display: none;
    }
  }
</div>
```

To see all the possible styles you can look in your generated styles in vendor/assets/stylesheets/dictate_css. Or just look at the files here
<br>
[base](https://github.com/milesstanfield/dictate_css/blob/master/app/assets/stylesheets/dictate_css/base.css)
<br>
[colors](https://github.com/milesstanfield/dictate_css/blob/master/app/assets/stylesheets/dictate_css/colors.css)
<br>
[floating](https://github.com/milesstanfield/dictate_css/blob/master/app/assets/stylesheets/dictate_css/floating.css)
<br>
[hide_show](https://github.com/milesstanfield/dictate_css/blob/master/app/assets/stylesheets/dictate_css/hide_show.css)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/milesstanfield/dictate_css. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

