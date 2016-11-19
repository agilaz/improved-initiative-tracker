class StatusesController < ApplicationController
  def show
  end

  def new
    @status = Status.new
  end

  def create
    params[:creature_ids].each do |id|
      @status = Status.new(status_params)
      unless EncounterCreature.find(id).statuses << @status
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
    params.require(:status).permit(:name, :duration, :repeatSave, :description, :saveType, :saveDC, :strChange, :dexChange, :conChange, :intChange, :wisChange, :chaChange)
  end
end
