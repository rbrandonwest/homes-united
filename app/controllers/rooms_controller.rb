class RoomsController < ApplicationController
  def index
  end

  def show
    @room = Room.find(params[:id])
  end
  
  def add_bed
    @room = Room.find(params[:id])

    @room.beds.create(bedsize: params[:bed_size])

    respond_to do |format|
      format.js { flash.now[:notice] = 'Resident assigned to bed.' }
    end
  end
end
