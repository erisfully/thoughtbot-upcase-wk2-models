Rails.application.routes.draw do
  get 'decks' => 'decks#index'
  get 'decks/new' => 'decks#new'
  get 'decks/:id' => 'decks#show', as: :deck
  post 'decks' => 'decks#create'
  patch 'decks/:id' => 'decks#update'
  get 'decks/:id/edit' => 'decks#edit'
  delete 'decks/:id' => 'decks#destroy'
end
