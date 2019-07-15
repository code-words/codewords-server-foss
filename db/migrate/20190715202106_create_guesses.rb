class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|
      t.references :game, foreign_key: true
      t.references :game_card, foreign_key: true
      t.integer :team

      t.timestamps
    end
  end
end
