class Resident < ApplicationRecord
    belongs_to :bed, optional: true

    has_one :room, through: :bed

    def full_address
        return if bed.nil?
        "#{bed.room.house.address}, #{bed.room.house.zip}"
    end

    def self.unassigned_residents
        Resident.where(bed_id: nil)
    end
end
