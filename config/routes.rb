Rails.application.routes.draw do
  devise_for :admins, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout'}
  root "projects#index"
  
  #test
  get 'project/index'
  root to: 'home#index'
  resources :projects
#  root to: 'home#index'
end

#admins/sign_in
#http://localhost:3000/auth/login
#devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', 
#                                              password: 'secret', confirmation: 
#                                              'verification', unlock: 'unblock', 
#                                              registration: 'register', sign_up: 
#                                              'cmon_let_me_in' }