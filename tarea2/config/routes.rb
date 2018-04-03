Rails.application.routes.draw do
  resources :noticias, :except => [:update], :path => "news" do
    resources :comentarios, :except => [:update], :path => "comments"
  end
  put 'news/:id' => 'noticias#update2'
  put 'news/:noticia_id/comments/:id' => 'comentarios#update2'
  patch 'news/:id' => 'noticias#update'
  patch 'news/:noticia_id/comments/:id' => 'comentarios#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
