class Trip < ApplicationRecord
    belongs_to :origin_location, :class_name => 'Location'
    belongs_to :destination_location, :class_name => 'Location'
    has_many :locations
end
