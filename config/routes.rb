Rails.application.routes.draw do
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
    get 'about' => 'homes#about'
    resources :users, only: [:index, :show, :edit, :update]
      get 'followings' => 'users#followings'
      get 'followers' => 'users#followers'
    resources :posts
      get 'search' => 'posts#search'
      get 'map' => 'posts#map'
    resources :likes, only: [:create, :destroy]
    resources :follows, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    resources :rankings, only: [:index, :show]
  end

  namespace :admin do
    resources :golf_courses
  end

end
