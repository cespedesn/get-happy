class User < ActiveRecord::Base
    has_many :quotes
    has_many :authors, through: :quotes
end