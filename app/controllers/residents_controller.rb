class ResidentsController < ApplicationController
  def index
    @residents = Resident.all
  end

  def show
    @resident = Resident.find(params[:id])
  end

  def new
    @resident = Resident.new
  end

  def create
    @resident = Resident.new(resident_params)

    if @resident.save
      @resident.update!(fullname: "#{@resident.first_name} #{@resident.last_name}" )
      redirect_to @resident
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @resident = Resident.find(params[:id])
  end

  def update
    @resident = Resident.find(params[:id])

    if @resident.update(manager_params)
      @resident.update!(fullname: "#{@resident.first_name} #{@resident.last_name}" )
      redirect_to @resident
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def resident_params
    params.require(:resident).permit(:first_name, :last_name, :phone, :dob)
  end
end
