module ActiveAdminSortable
  module DSL
    def active_admin_sortable(column_name = :sort)

      collection_action :sort, :method => :post do

        the_resource_name = active_admin_config.resource_name
        params[the_resource_name.to_s.downcase.to_sym].each_with_index do |id, index|
          klass = Kernel.const_get(the_resource_name)
          object = klass.find(id)
          object.send("#{column_name.to_s}=", index+1)
          object.save!
        end
        render :nothing => true
      end

     config.sort_order = "#{column_name.to_s.underscore}_asc"

    end
  end
end