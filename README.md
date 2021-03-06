Spree Waiting List
================
[![Build Status](https://travis-ci.org/DynamoMTL/spree_waiting_list.svg?branch=master)](https://travis-ci.org/DynamoMTL/spree_waiting_list) [![Code Climate](https://codeclimate.com/github/DynamoMTL/spree_waiting_list/badges/gpa.svg)](https://codeclimate.com/github/DynamoMTL/spree_waiting_list) [![Test Coverage](https://codeclimate.com/github/DynamoMTL/spree_waiting_list/badges/coverage.svg)](https://codeclimate.com/github/DynamoMTL/spree_waiting_list) [![Gem Version](https://badge.fury.io/rb/spree_waiting_list.svg)](http://badge.fury.io/rb/spree_waiting_list)

A waiting list extension for Spree.

Users and guests can request to be notified via email when a product/variant comes back in stock.


Installation
------------

Add spree_waiting_list to your Gemfile:

```ruby
gem 'solidus_waiting_list'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_waiting_list:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app should be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_waiting_list/factories'
```


Copyright (c) 2015 Joshua Nussbaum, released under the New BSD License
