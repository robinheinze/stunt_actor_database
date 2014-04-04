StuntDatabase::Application.routes.draw do
  match('/people', {:via => :get, :to => 'people#index' })
  match('/people', {:via => :post, :to => 'people#create'})
  match('/people/new', {:via => :get, :to => 'people#new'})
  match('/people/:slug', {:via => :get, :to => 'people#show'})
  match('/people/:slug', {:via => [:patch, :put], :to => 'people#update'})
  match('/people/:slug', {:via => :delete, :to => 'people#destroy'})
  match('/people/:slug/edit', {:via => :get, :to => 'people#edit'})
  match('/people/search', {:via => :get, :to => 'people#index'})

  match('/skills', {:via => :get, :to => 'skills#index' })
  match('/skills', {:via => :post, :to => 'skills#create'})
  match('/skills/:slug', {:via => [:patch, :put], :to => 'skills#update'})
  match('/skills/:slug', {:via => :delete, :to => 'skills#destroy'})
  match('/skills/:slug/edit', {:via => :get, :to => 'skills#edit'})
end
