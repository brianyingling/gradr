Gradr::Application.routes.draw do
  root :to=>'home#index'
  resources :teachers, :students, :assessments
  get '/login' => 'session#new'
  post '/login' => 'session#create'
end
