class Game < ApplicationRecord
    validates :title, :genre, :platform, :release, presence: true
    validates :title, uniqueness: true
    validates_date :release, on_or_before: lambda { Date.current }
end
