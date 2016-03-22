Rails.application.routes.draw do

  devise_for :users
  get 'pages/contact', to: 'pages#contact'
  get 'pages/about', to: 'pages#about'
  #get 'error', to: "pages#error"

  get 'blog', to: redirect("http://msn.com") 

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end  
  
  root 'pages#home'
  #get '*path', to: redirect("/error")
end
