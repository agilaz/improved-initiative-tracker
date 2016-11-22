module ApplicationHelper
  def show_errors(object)
    render(:partial => 'main/errors', :locals => {:object => object})
  end

  def make_list
    creatures = EncounterCreature.all.initiative_order.to_a
    creatures.each do |c|
      if c.is_first
        until creatures.first == c
          creatures = creatures.rotate
        end
        return creatures
      end
    end
  end

  def cycle_list
    creatures = make_list
    creatures.first.update_attributes({:is_first => false})
    creatures.first.next_turn
    creatures = creatures.rotate
    creatures.first.update_attributes({:is_first => true})
    redirect_to :back
  end
end
