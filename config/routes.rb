Rails.application.routes.draw do
    scope '/api/' do
        scope '/v1/' do
            scope '/users' do
                get '/' => 'users#index'
                post '/' => 'users#create'
                scope '/:id' do
                    get '/' => 'users#show'
                    put '/' => 'users#update'
                    patch '/' => 'users#update'
                    delete '/' => 'users#destroy'
                end
            end
            scope '/trips' do
                get '/' => 'trips#index'
                post '/' => 'trips#create'
                scope '/:id' do
                    get '/' => 'trips#show'
                    put '/' => 'trips#update'
                    patch '/' => 'trips#update'
                    delete '/' => 'trips#destroy'
                end
            end
            scope '/locations' do
                get '/' => 'locations#index'
                post '/' => 'locations#create'
                scope '/:id' do
                    get '/' => 'locations#show'
                    put '/' => 'locations#update'
                    patch '/' => 'locations#update'
                    delete '/' => 'locations#destroy'
                end
            end
        end
    end
end
