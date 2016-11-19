class MainController < ApplicationController
  before_action :make_list, :only => [:index, :cycle_list]
  def index


  end
  def cycle_list
    @creatures.first.update_attributes({:is_first => false})
    @creatures.first.next_turn
    @creatures = @creatures.rotate
    @creatures.first.update_attributes({:is_first => true})
    redirect_to :back
  end

  private
  def make_list
    @creatures = EncounterCreature.all.initiative_order.to_a
    @creatures.each do |c|
      if c.is_first
        until @creatures.first == c
          @creatures = @creatures.rotate
        end
        return
      end
    end
  end
end
