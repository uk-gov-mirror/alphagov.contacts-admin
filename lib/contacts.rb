module Contacts
  autoload :Interactor, "contacts/interactor"

  mattr_accessor :contacts_search_client
  mattr_accessor :worldwide_api
  mattr_accessor :organisations_api
  mattr_accessor :enable_admin_routes

  module_function
end
