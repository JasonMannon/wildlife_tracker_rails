WildlifeTracker::Application.routes.draw do
 ## species routes
 match('species', {:via => :get, :to => 'species#index'})
 match('/', {:via => :get, :to => 'species#index'})
 match('species/new', {:via => :get, :to => 'species#new'})
 match('species', {:via => :post, :to => 'species#create'})
 match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
 match('species/:id', {:via => :get, :to => 'species#show'})
 match('species/:id/edit', {:via => :get, :to => 'species#edit'})
 match('species/:id', {:via => :delete, :to => 'species#destroy'})

 ## sightings routes
 match('sightings', {:via => :get, :to => 'sightings#index'})
 match('sightings/:id', {:via => [:patch, :put], :to => 'species#new'})
 match('species/:species_id/sightings/new', {:via => :get, :to => 'sightings#new'})
 match('species/:species_id/sightings', {:via => :post, :to => 'sightings#create'})
 match('species/:species_id/sightings/show', {:via => :get, :to => 'sightings#show'})
 match('sightings/:id/update', {:via => [:patch, :put], :to => 'sightings#update'})
 match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
 match('sightings/:id', {:via => :delete, :to => 'sightings#destroy'})

 ## regions routes

 match('regions', {:via => :get, :to => 'regions#index'})
 match('regions/new', {:via => :get, :to => 'regions#new'})
 match('regions', {:via => :post, :to => 'regions#create'})
 match("regions/:id", {:via => :get, :to => 'regions#show'})
 match('regions/:id/edit', {:via => :get, :to => 'regions#edit'})
 match('regions/:id', {:via => [:patch, :put], :to => 'regions#update'})
 match('regions/:id', {:via => :delete, :to => 'regions#destroy'})

end
