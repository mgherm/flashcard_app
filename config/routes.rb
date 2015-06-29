FlashcardApp::Application.routes.draw do
  get "homes/index"

  resource :session, only: [:create, :new, :destroy]
  root to: "homes#index"
  resources :users, only: [:create, :new]
  resources :decks do
    resources :cards, except: :index
  end
end
