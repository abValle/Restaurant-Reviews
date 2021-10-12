Rails.application.routes.draw do
  # Collection
  # Member
  resources :restaurants do
    # Starts with /restaurants
    collection do # Criar rotas alternativas dentro de um contexto, sem necessidade de ID
      # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
      get :top
    end
    member do # Criar rotas alternativas dentro de um contexto, necessario ID
      get :chef
    end
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
