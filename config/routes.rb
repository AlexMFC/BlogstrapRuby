Rails.application.routes.draw do
  root 'articles#index' #raiz da rota ja vai direto para articles index (primeira pagina)

  resources :articles
end
