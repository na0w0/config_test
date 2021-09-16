Rails.application.routes.draw do
  root 'top#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users do
    resources :articles
  end

  # ログインユーザーの記事一覧
  resources :mypage, only: 'index'
end
