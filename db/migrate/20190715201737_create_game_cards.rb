class CreateGameCards < ActiveRecord::Migration[5.2]
  def change
    create_table :game_cards do |t|
      t.references :game, foreign_key: true
      t.references :card, foreign_key: true
      t.integer :type
      t.integer :address
      t.boolean :chosen

      t.timestamps
    end
  end
end
