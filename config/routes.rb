Rails.application.routes.draw do

  root 'tasks#index'

  resources :projects do
    resources :tasks, except: [:new, :edit]
  end

end
