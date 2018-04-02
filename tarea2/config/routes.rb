Rails.application.routes.draw do
  resources :noticias, :path => "news" do
    resources :comentarios, :path => "comments"
  end
  match 'noticias', to: 'noticias#update2', via: [:put]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
