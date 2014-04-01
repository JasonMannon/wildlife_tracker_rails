WildlifeTracker::Application.routes.draw do
 match('species', {:via => :get, :to => 'species#index'})
 match('/', {:via => :get, :to => 'species#index'})
 match('species/new', {:via => :get, :to => 'species#new'})
 match('species', {:via => :post, :to => 'species#create'})
 match('species/:id', {:via => :get, :to => 'species#show'})

end
