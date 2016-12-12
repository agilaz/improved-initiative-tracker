module MainHelper
  def show_hide creature
    link_text = 'Hide'
    if creature.is_hidden
      link_text = 'Show'
    end
    return link_text
  end
end
