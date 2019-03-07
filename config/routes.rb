Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :posts
	get 'Bookers' => "posts#Bookers"
	root :to => 'posts#Bookers'
end
