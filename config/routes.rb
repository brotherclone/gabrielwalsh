Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :case_studies
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
  get 'prototyping' => 'prototyping#index'
  get 'portfolio' => 'portfolio#index'
end
