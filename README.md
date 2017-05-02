# Solidus Variant Options

Solidus Variant Options is a very simple solidus extension that replaces the radio-button variant selection with groups of option types and values. To get a better idea let's let a few images do the explaining.

------------------------------------------------------------------------------
Installation
------------------------------------------------------------------------------

If you don't already have an existing Solidus site, [click here](https://gist.github.com/946719) then come back later... 

To install Solidus Variant Options, just add the following to your Gemfile:

```ruby
gem 'solidus_variant_options', git: 'https://github.com/2beDigital/solidus_variant_options', branch: "master"
```

Now, bundle up with:

```bash
bundle
```

Next, run the install generator to copy the necessary migration to your project and migrate your database:

```bash
rails g solidus_variant_options:install
rake db:migrate
```

------------------------------------------------------------------------------
Configuration Options
------------------------------------------------------------------------------

Solidus Variant Options comes with some handy options:

- allow_select_outofstock (default : false)
  When using extension, you might want to allow your customer to add out of stock product by selecting out of stock variant options :
  ```erb
    <%= form_for Spree::WishedProduct.new, :html => {:"data-form-type" => "variant"} do |f| %>
      <%= f.hidden_field :variant_id, :value => @product.master.id %>
      <button type="submit" class="medium blue awesome">
        <%= t(:add_to_wishlist) %>
      </button>
    <% end %>
  ```
  By setting allow_select_outofstock to true, when an user selects variant options it will automatically update any form's input variant_id with an data-form-type="variant" attribute.

- default_instock (default: false)
  If this is option is set to true, it will automatically preselect in-stock variant options.

- main_option_type_id (default: 1)
  This is the option type id that will be use for showing each variant in the home.
- main_option_type_label (default: 'color')
  This is the option type label that will be use as URL parameter to preselect the option in the product show page.

These configuration options can be set in a config/initializers/spree_variant_options.rb file for example :
```ruby
SolidusVariantOptions::VariantConfig.allow_select_outofstock = true
SolidusVariantOptions::VariantConfig.default_instock = true
```

------------------------------------------------------------------------------
Versions
------------------------------------------------------------------------------

Solidus Variant Options is compatible with Solidus 2.1. Please reference `Versionfile` for more details.


------------------------------------------------------------------------------
Contributors
------------------------------------------------------------------------------

Version of spree_variant_option

* Spencer Steffen ([@citrus](https://github.com/citrus))
* Stéphane Bounmy ([@sbounmy](https://github.com/sbounmy))
* Dan Morin ([@danmorin](https://github.com/danmorin))
* Richard Brown ([@rbrown](https://github.com/rbrown))
* [@baracek](https://github.com/baracek)

Version of solidus_variant_option

* Noel Díaz ([@Noel](https://github.com/NoelDiazMesa))

If you'd like to help out feel free to fork and send me pull requests!
