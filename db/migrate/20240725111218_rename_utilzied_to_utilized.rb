class RenameUtilziedToUtilized < ActiveRecord::Migration[7.1]
  def change
    rename_column :skills, :percent_utlizied, :percent_utilized
  end
end
