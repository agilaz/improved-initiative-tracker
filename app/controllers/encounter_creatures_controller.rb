class EncounterCreaturesController < ApplicationController

  def show
    @creature = EncounterCreature.find(params[:id])
  end

  def new
    @creature = EncounterCreature.new
    @all_creatures = Creature.base_only.alphabetical
  end

  def create
    params[:quantity].to_i.times do
      #todo name each uniquely?
      @creature = EncounterCreature.new(encounter_creature_params)
      @creature.copy(Creature.find(params[:base_id]))
      if params[:roll_init]
        @creature.roll_initiative
      end
      unless @creature.save
        render('new')
      end
    end
    redirect_to(root_path)
  end

  def edit
    @creature = EncounterCreature.find(params[:id])
  end

  def update
    @creature = EncounterCreature.find(params[:id])
  end

  def delete
    @creature = EncounterCreature.find(params[:id])
  end

  def destroy
    @creature = EncounterCreature.find(params[:id])
  end

  def encounter_creature_params
    params.require(:encounter_creature).permit(:initiative)
  end
end
