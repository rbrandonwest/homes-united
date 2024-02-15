class BedsController < ApplicationController
  def index
  
  end

  def assign_resident
    @bed = Bed.find(params[:bed_id])
    @resident = Resident.find(params[:resident_id])

    @bed.update!(resident_id: @resident.id)
    @resident.update!(bed_id: @bed.id)

    respond_to do |format|
      format.js { flash.now[:notice] = 'Resident assigned to bed.' }
    end
  end

  def remove_occupant
    @bed = Bed.find(params[:bed_id])
    @resident = @bed.resident

    @bed.update!(resident_id: nil)
    @resident.update!(bed_id: nil)

    respond_to do |format|
      format.js { flash.now[:notice] = 'Resident removed bed.' }
    end
  end
end
