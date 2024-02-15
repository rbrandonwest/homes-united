class House < ApplicationRecord
    has_one :manager

    has_many :rooms
    has_many :beds, through: :rooms

    def full_address
        "#{address}, #{city}, #{state} #{zip}"
    end

    def available_beds
        beds.where(resident_id: nil)
    end

    def occupied_beds
        beds.where.not(resident_id: nil)
    end

    def self.total_occupants_for_manager(manager_id)
        House.joins(rooms: :beds).where(manager_id: manager_id).where.not(beds: { resident_id: nil }).count
    end
end
