class Location < ApplicationRecord
    belongs_to :customer
    belongs_to :user
end
