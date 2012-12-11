# ActiveAdminSortable

Add drag and drop sorting with ajax update to Active Admin Index Pages

## Installation

Add this line to your application's Gemfile:

    gem 'active_admin_sortable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_admin_sortable

Then run the install generator to add the reference to the javascript for drag and drop

    rails generate active_admin_sortable:install

## Usage

Add the following line to your active admin resource:

     active_admin_sortable

## Setting up the Model

Your model should have an integer column to store the sort order of each item. By default it will look for a column named "sort", but you can use your own column name and pass it into the call to active_admin_sortable:

    active_admin_sortable :sort_order

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
