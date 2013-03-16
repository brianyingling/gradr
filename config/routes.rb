Gradr::Application.routes.draw do
  root :to=>'home#index'
  resources :teachers, :students, :assessments
end
