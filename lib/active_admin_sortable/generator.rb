require 'rails/generators'

module ActiveAdminSortable
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc "This generator adds a reference to the active admin sortable js"

      def inject_backbone
        inject_into_file "app/assets/javascripts/active_admin.js", :after => "//= require active_admin/base" do
          "\n//= require active_admin_sortable\n"
        end
      end

    end
  end

end