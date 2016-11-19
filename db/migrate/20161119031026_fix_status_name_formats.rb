class FixStatusNameFormats < ActiveRecord::Migration[5.0]
  def change
    rename_column(:statuses, :repeatSave,  :repeat_save)
    rename_column(:statuses, :saveType, :save_type)
    rename_column(:statuses, :saveDC,  :save_DC)
    rename_column(:statuses, :strChange,  :str_change)
    rename_column(:statuses, :dexChange,  :dex_change)
    rename_column(:statuses, :conChange,  :con_change)
    rename_column(:statuses, :intChange,  :int_change)
    rename_column(:statuses, :wisChange,  :wis_change)
    rename_column(:statuses, :chaChange,  :cha_change)

  end
end
