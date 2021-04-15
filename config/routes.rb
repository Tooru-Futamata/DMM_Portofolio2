Rails.application.routes.draw do
  get 'public_golfcourses/index'
  get 'public_golfcourses/show'
  get 'golfcourses/index'
  get 'golfcourses/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  root 'homes#top'

  namespace :public, path: "" do
    # get 'followings' => 'users#followings'
    # get 'followers' => 'users#followers'
    resources :users, only: [:index, :show, :edit, :update] do
      get :followings, on: :member
      get :followers, on: :member
      get :likes, on: :collection
    end
    resources :posts
      get 'search' => 'posts#search'
      get 'map' => 'posts#map'
    resources :follows, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    resources :rankings, only: [:index, :show]
    resources :public_golfcourses, only: [:index, :show]
  end

  namespace :admin do
    resources :golf_courses do
      resource :likes, only: [:create, :destroy]
    end
  end
  resources :relationships, only: [:create, :destroy]

end
