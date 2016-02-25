Rails.application.routes.draw do

  get 'pages/contact', to: 'pages#contact'
  get 'pages/about', to: 'pages#about'
  #get 'error', to: "pages#error"

  get 'blog', to: redirect("http://msn.com") 

  resources :projects  
  
  root 'pages#home'
  #get '*path', to: redirect("/error")
end
