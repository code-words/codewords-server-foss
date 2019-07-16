class Game < ApplicationRecord
  has_many :players
  has_many :users, through: :players

  has_many :game_cards
  has_many :cards, through: :game_cards

  has_many :hints
  has_many :guesses

  has_secure_token :game_key
  has_secure_token :intel_key
  has_secure_token :invite_code
end
