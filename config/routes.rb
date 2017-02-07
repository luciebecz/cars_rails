Rails.application.routes.draw do
  root 'cars#index'   #put controller name here

  resources :cars 
  #sets up aaaallll those routes we made in todo list

end

