class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :points, :default => 0
      t.integer :max_points, :default => 0

      t.timestamps null: false
    end
  end
end
