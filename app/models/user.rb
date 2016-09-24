class User < ApplicationRecord
    include ActiveModel::Serializers::JSON



    belongs_to :trips, :class_name => 'Trip'
    has_many :trips

    belongs_to :home_location, :class_name => 'Location'
    belongs_to :work_location, :class_name => 'Location'
    has_many :locations
end
