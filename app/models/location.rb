class Location < ApplicationRecord
    has_many :karens

    validates :city, presence: true
    validates :state, presence: true

    default_scope { order(state: :asc) }

    accepts_nested_attributes_for :karens
end
