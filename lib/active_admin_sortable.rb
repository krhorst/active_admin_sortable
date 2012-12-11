require "active_admin_sortable/version"
require 'active_admin_sortable/engine'
require 'active_admin_sortable/dsl'
require 'active_admin_sortable/generator'

::ActiveAdmin::DSL.send(:include, ActiveAdminSortable::DSL)