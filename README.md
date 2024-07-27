# PLU

[Price look-up codes](https://en.wikipedia.org/wiki/Price_look-up_code) made easy

:watermelon: 4032
:banana: 4011
:grapes: 4023

Data cleaned up from the [International Federation of Produce Standards](https://www.ifpsglobal.com/)

[![Build Status](https://github.com/ankane/plu/actions/workflows/build.yml/badge.svg)](https://github.com/ankane/plu/actions)

## Installation

Add this line to your application’s Gemfile:

```ruby
gem "plu"
```

## Getting Started

List known PLUs

```ruby
PLU.all
```

Get name from PLU

```ruby
PLU.new(4011).name # Bananas
```

Check if valid

```ruby
PLU.new(2000).valid? # false
```

### 5-Digit PLUs

For PLUs with 5 digits, the first digit has a special meaning: 9 specifies organic.

4011 - Bananas :banana:
94011 - Organic bananas :banana:

```ruby
PLU.new(94011).organic? # true
```

### Retailer Assigned

```ruby
PLU.new(3170).retailer_assigned? # true
```

## History

View the [changelog](https://github.com/ankane/plu/blob/master/CHANGELOG.md)

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/ankane/plu/issues)
- Fix bugs and [submit pull requests](https://github.com/ankane/plu/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
- Help clean up [data](https://github.com/ankane/plu/blob/master/plu_codes.csv)

To get started with development:

```sh
git clone https://github.com/ankane/plu.git
cd plu
bundle install
bundle exec rake test
```
