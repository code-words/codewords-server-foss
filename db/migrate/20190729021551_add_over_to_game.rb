class AddOverToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :over, :boolean, default: false
  end
end
