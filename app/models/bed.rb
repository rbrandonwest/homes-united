class Bed < ApplicationRecord
    has_one :house, through: :room
    belongs_to :room
    belongs_to :resident, optional: true

    def self.bed_sizes
        ["twin", "queen", "king"]
    end
end
