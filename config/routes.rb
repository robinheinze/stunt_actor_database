StuntDatabase::Application.routes.draw do
  match('/people', {:via => :get, :to => 'people#index' })
  match('/people', {:via => :post, :to => 'people#create'})
  match('/people/new', {:via => :get, :to => 'people#new'})
  match('/people/:slug', {:via => :get, :to => 'people#show'})
  match('/people/:slug', {:via => [:patch, :put], :to => 'people#update'})
  match('/people/:slug', {:via => :delete, :to => 'people#destroy'})
  match('/people/:slug/edit', {:via => :get, :to => 'people#edit'})
end
