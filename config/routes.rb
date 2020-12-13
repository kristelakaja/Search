Rails.application.routes.draw do
	get '/search' => 'pages#search', :as => 'search_page'
end
