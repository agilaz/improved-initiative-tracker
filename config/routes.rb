Rails.application.routes.draw do
  root :to => 'main#index'

  get 'main/index'
  post 'main/cycle_list'

  resources :creatures do
    member do
      get :delete
    end
  end

  resources :encounter_creatures, :except => [:index] do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
