module PlayerHelper
  def make_player_list
    list = make_list
    list.select! {|c| !c.is_hidden?}
    return list
  end
end
