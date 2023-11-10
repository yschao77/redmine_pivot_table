require 'redmine'
require File.expand_path(File.dirname(__FILE__) + '/lib/redmine_pivot_table/query_column_patch.rb')
require File.expand_path(File.dirname(__FILE__) + '/lib/redmine_pivot_table/projects_helper_patch.rb')

Rails.configuration.to_prepare do
  if Redmine::VERSION.to_s < "2.6.0"
    Rails.logger.info "redmine_pivot_table: patching QueryColumn for Redmine <2.6.0"
    require_dependency 'query'
    QueryColumn.send(:include, RedminePivotTable::QueryColumnPatch)
  end
end



Redmine::Plugin.register :redmine_pivot_table do
  name 'Redmine Pivot Table plugin'
  author 'Daiju Kito'
  description 'Pivot table plugin for Redmine 5.0.x using pivottable.js'
  version '0.0.8'
  url 'https://github.com/yschao77/redmine_pivot_table'

  project_module :pivottables do
    permission :view_pivottables, :pivottables => [:index]
  end
  
  menu :top_menu, :pivottables, { :controller => 'pivottables', :action => 'index' }, :last => true, :caption => :label_pivottables, :after => :project
  menu :project_menu, :pivottables, { :controller => 'pivottables', :action => 'index' }, :after => :activity, :param => :project_id

  settings :default => {'pivottable_max' => 1000}, :partial => 'pivottables/setting'
end
