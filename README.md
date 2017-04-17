# Corn Cub README

Corn Cub is for managing and for promoting involvement in a Scout popcorn fundraiser. 

For **Scouts**, they can track their progress, prizes they might have earned, and manage orders and deliveries.

For **Leaders**, Corncub provides a financial accounting and inventory management system. With Corncub, you will always know how much inventory you have, where it is, and how much your unit has earned.

Through their own accounts, Scouts can view their sales progress in door-to-door (Take Order) sales and hours they have contributed towards Site Sales.

Corn Cub also provides comprehensive management tools, including an Income Statement, Balance Sheet, Take Order Purchase Order and Final BSA Settlement Form. It also notifies your Unit Treasurer every time a bank deposit is made from Popcorn sales.

## Installation

This is a Ruby on Rails application. Simply `bundle install` will install dependencies and then `Rails server` will launch the application.

### Dependencies

Rails 5.0, Ruby 2.3

### Database

This application uses Sqlite. Under heavier concurrant requests, it may be advisable to use a more robust database.

### Config

In application.rb, you can set the following:

```ruby
config.application_name = 'Corn Cub'
config.allow_for_multiple_units = false
```

If you want to run the application for just one Scout unit, change `config.allow_for_multiple_unit` to `true`.

## How to

This application can be used for one or many Scout units.

### Features

Deposits will result in notification emails being sent out to the Treasurer email address on a Unit.


## Author / License

Corn Cub was developed by Carson Cole. It is free to use and be modified as you see fit. It uses the GNU GENERAL PUBLIC LICENSE.