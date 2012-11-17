RedmineApp::Application.routes.draw do
  get '/projects/:id/documentation', :to => 'documentation#index'
  get '/projects/:id/documentation/*file', { :to => 'documentation#serve', :format => false }
end
