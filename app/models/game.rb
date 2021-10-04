class Game < ApplicationRecord
    validates :title, :genre, :platform, :release, presence: true
    validates :title, uniqueness: true, length: { minimum: 3 }
    validates_date :release, on_or_before: lambda { Date.current }

    has_many :expansions

    has_one_attached :photo  #capa do jogo
    has_many_attached :images #imagens do jogo em si
end
