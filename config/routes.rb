Gradr::Application.routes.draw do
  root :to=>'home#index'
  resources :teachers, :students, :assessments, :klasses
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/chart' => 'home#show_chart', :as=>'chart'

end
