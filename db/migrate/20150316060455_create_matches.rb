class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :player_first
      t.string :player_second
      t.string :image1
      t.string :image2

      t.timestamps null: false
    end
  end
end
