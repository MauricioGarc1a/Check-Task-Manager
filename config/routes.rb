Rails.application.routes.draw do

  root 'tasks#index'

  resources :projects, except: [:new, :edit] do
    resources :tasks, except: [:new, :edit]
  end

end
