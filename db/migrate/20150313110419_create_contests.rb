class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :match_number
      t.string :player_first
      t.string :player_second
      t.string :match_point

      t.timestamps null: false
    end
  end
end
