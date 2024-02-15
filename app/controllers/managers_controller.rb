class ManagersController < ApplicationController
  def index
    @manager = Manager.find(current_user.id)
  end

  def edit
    @manager = Manager.find(params[:id])
  end

  def update
    @manager = Manager.find(params[:id])

    if @manager.update(manager_params)
      @manager.update!(fullname: "#{@manager.first_name} #{@manager.last_name}" )
      redirect_to @manager
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def manager_params
    params.require(:manager).permit(:first_name, :last_name, :phone, :dob, :email)
  end
end
