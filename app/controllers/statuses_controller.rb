class StatusesController < ApplicationController
  def show
    @status = Status.find(params[:id])
  end

  def new
    @status = Status.new
  end

  def create
    params[:creature_ids].each do |id|
      @status = Status.new(status_params)
      unless EncounterCreature.find(id).add_status(@status)
        render('new')
      end
    end
    redirect_to(root_path)

  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
  end

  def delete
  end

  def destroy
  end

  def status_params
    params.require(:status).permit(:name, :duration, :repeat_save, :description, :save_type, :save_DC, :str_change, :dex_change, :con_change, :int_change, :wis_change, :cha_change)
  end
end
