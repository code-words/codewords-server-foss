json.extract! game_card, :id, :game_id, :card_id, :type, :address, :chosen, :created_at, :updated_at
json.url game_card_url(game_card, format: :json)
