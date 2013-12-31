# PLU

[Price look-up codes](http://en.wikipedia.org/wiki/Price_look-up_code) made easy

:watermelon: 4032
:banana: 4011
:grapes: 4023

[Download PLU codes](https://raw.github.com/ankane/plu/master/plu_codes.csv) - data cleaned up from the [Produce Marketing Association](http://www.plucodes.com)

## How To Use

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

For PLUs with 5 digits, the first digit has a special meaning: 9 specifies organic, and 8 specifies genetically modified.

4011 - Bananas :banana:
94011 - Organic bananas :banana:
84011 - Genetically modified bananas

```ruby
PLU.new(94011).organic? # true
PLU.new(84011).gm?      # true
```

### Retailer Assigned

```ruby
PLU.new(3170).retailer_assigned? # true
```

## Installation

Add this line to your Gemfile:

```ruby
gem "plu"
```

And run:

```sh
bundle
```

## TODO

- clean up data

## Resources

- [IFPS 2012 Users Guide](http://www.plucodes.com/docs/Users_Guide_July_2012_FINAL.pdf)

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/ankane/plu/issues)
- Fix bugs and [submit pull requests](https://github.com/ankane/plu/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
- Help clean up [data](https://github.com/ankane/plu/blob/master/plu_codes.csv)
