Redmine::Plugin.register :redmine_embed do
  name 'Documentation Embed plugin'
  author 'Zane Ashby'
  description 'Embed project documentation in Redmine'
  version '0.0.1'
  author_url 'http://demonastery.org'

  permission :documentation, { :documentation => [:index, :serve] }, :public => true
  menu :project_menu, :documentation, { :controller => 'documentation', :action => 'index' }, { :caption => 'Documentation', :after => :repository }
end
