class Guess < ApplicationRecord
  belongs_to :game
  belongs_to :gamecard
end
