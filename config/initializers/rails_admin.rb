RailsAdmin.config do |config|
  # Devise authentication
  # TODO: only admins (is_admin?)
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # Pretty-fy data
  RailsAdmin.config do |config|
    config.model Vendor do
      label 'Restaurant'
      label_plural 'Restaurants'
    end

    config.model Product do
      label 'Food Item'
      label_plural 'Food Items'
    end

    config.model ProductAddon do
      label 'Food Add-on'
      label_plural 'Food Add-ons'
    end

    config.model Order do
      label 'User Order'
      label_plural 'User Orders'
    end

    config.model MenuCategory do
      label 'Menu Category'
      label_plural 'Menu Categories'
    end

    config.navigation_static_links = {
      'Google' => 'http://www.google.com'
    }
  end

  # Admin actions
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
