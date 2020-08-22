class User < ApplicationRecord
    has_many :definitions
    has_many :words, through: :definitions
    
    has_secure_password
    
    
    validates_presence_of :name
    validates :name, uniqueness: { case_sensitive: false }
    
end