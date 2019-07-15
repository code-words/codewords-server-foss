json.extract! player, :id, :user_id, :game_id, :role, :team, :created_at, :updated_at
json.url player_url(player, format: :json)
