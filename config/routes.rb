Bhf::Engine.routes.draw do

  root to: 'application#index'

  get 'page/:page', to: 'pages#show', as: :page

  scope ':platform' do

    # Rails 5 API doesn't have new/edit paths
    get 'entries/new', to: 'entries#new', as: :new_entry

    resources :entries, except: [:index] do
      collection do
        put :sort
      end

      member do
        get :edit
        post :duplicate
      end


      resources :embed_entries, except: [:index], as: :embed
    end
  end

end
