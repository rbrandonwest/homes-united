class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)

    if @house.save
      @house.bedrooms.times do
        @house.rooms.create
      end

      redirect_to @house
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def house_params
    params.require(:house).permit(:address, :city, :zip, :state, :bedrooms, :gender, :manager_id)
  end
end
