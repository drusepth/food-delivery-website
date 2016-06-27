RailsAdmin.config do |config|
  # Devise authentication
  # TODO: only admins (is_admin?)
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # Pretty-fy data
  RailsAdmin.config do |config|
    config.navigation_static_links = {
      'Google' => 'http://www.google.com'
    }

    config.model ProductAddon do
      edit do
        field :name
        field :product, :belongs_to_association
        field :price_delta
      end
    end
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
