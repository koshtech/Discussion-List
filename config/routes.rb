List::Application.routes.draw do

  devise_for :users

  resources :topics do
    resources :comments
  end
  
  match '/:year/:month/:day' => 'topics#index'

  root :to => "topics#index"
  
  match 'topics/search' => 'topics#search'

end
