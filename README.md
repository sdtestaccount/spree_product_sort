Spree Product Sort
==================

Simple extention to sort products within a taxon & global index.

It works by creating a new DB table to store the product positions for each taxon, and adding an admin view that lets you drag-and-drop them into place.

Based on: [https://github.com/jdevine/spree-ordering-in-taxons](https://github.com/jdevine/spree-ordering-in-taxons)

Add gem 

    gem 'spree_product_sort', :git => 'git://github.com/GeekOnCoffee/spree_product_sort.git'
    bundle install

Add Migration and assets

    rails g spree_product_sort:install