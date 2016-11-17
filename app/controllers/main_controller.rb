class MainController < ApplicationController
  before_filter :make_list, :only => [:index, :cycle_list]
  def index


  end
  def cycle_list
    @creatures.first.update_attributes({:is_first => false})
    @creatures = @creatures.rotate
    @creatures.first.update_attributes({:is_first => true})

    redirect_to :back
  end

  private
  def make_list
    @creatures = EncounterCreature.all.order("initiative DESC").to_a
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
