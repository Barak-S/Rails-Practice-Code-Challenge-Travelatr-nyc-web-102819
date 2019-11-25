Rails.application.routes.draw do
  post '/bloggers', to: 'bloggers#create'
  get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger'
  get '/bloggers/:id', to: 'bloggers#show', as: 'blogger'
end
