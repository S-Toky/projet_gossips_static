Rails.application.routes.draw do
 	get '/contact', to: 'find#contact'
  get '/team', to: 'show#team'

 	root to: 'page#home'
 	get '(/:first_name)', to: 'page#welcome', as: 'welcome'
 	get '/profil/id', to: 'page#profil'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
