Rails.application.routes.draw do
  resources :sayings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :case_studies, path:'/portfolio'
  resources :case_study_items
  resources :jobs
  resources :my_roles
  resources :organizations
  resources :project_platforms
  resources :projects
  resources :sectors
  resources :skills

  root 'coming_soon#index'
  get 'home' => 'home#index'
  get 'soon' => 'coming_soon#index'
  get 'resume' => 'resume#index'
  # get 'prototyping' => 'prototyping#index'
  get 'portfolio' => 'case_studies#index'
  get 'style' => 'style_guide#index'
  get 'privacy' => 'privacy#index'
end
