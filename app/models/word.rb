class Word < ApplicationRecord
    has_many :definitions
    has_many :users, through: :definitions
    validates :spelling, uniqueness: { case_sensitive: false }
end