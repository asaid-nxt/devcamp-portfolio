class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :percent_utlizied

      t.timestamps
    end
  end
end
