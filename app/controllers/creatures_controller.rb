class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all.base_only.alphabetical
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(creature_params)
    if @creature.save
      redirect_to(creatures_path)
    else
      render('new')
    end
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def update
    @creature = Creature.find(params[:id])
    if @creature.update_attributes(creature_params)
      redirect_to(creatures_path)
    else
      render('edit')
    end
  end

  def delete
    @creature = Creature.find(params[:id])
  end

  def destroy
    Creature.find(params[:id]).destroy
    redirect_to(creatures_path)
  end

  def creature_params
    params.require(:creature).permit(:name, :description,
                                     :armor_class, :combat_maneuver_defense,
                                     :max_hit_points, :strength, :dexterity, :constitution,
                                     :intelligence, :wisdom, :charisma, :fortitude, :reflex, :will)
  end

end
