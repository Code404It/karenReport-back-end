class Karen < ApplicationRecord
    belongs_to :location

    validates :title, presence: true
    validates :incident, presence: true
end
