class Author < ActiveRecord::Base
    has_many :quotes
    has_many :users, through: :quotes
end