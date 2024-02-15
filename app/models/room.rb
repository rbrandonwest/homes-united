class Room < ApplicationRecord
    belongs_to :house

    has_many :beds

    def available_beds
        beds.where(resident_id: nil)
    end

    def occupants
        beds.includes(:resident).map { |bed| bed.resident }.compact
    end
end
