Rails.application.routes.draw do
    scope '/api/' do
        scope '/v1/' do
            scope '/users' do
                get '/' => 'users#index'
                post '/' => 'users#create'
                put '/' => 'users#update'
                patch '/' => 'users#update'
                delete '/' => 'users#destroy'
            scope '/trips' do
                get '/' => 'trips#index'
                post '/' => 'trips#create'
                put '/' => 'trips#update'
                patch '/' => 'trips#update'
                delete '/' => 'trips#destroy'
            scope '/locations' do
                get '/' => 'locations#index'
                post '/' => 'locations#create'
                put '/' => 'locations#update'
                patch '/' => 'locations#update'
                delete '/' => 'locations#destroy'
            end
        end
    end
end
