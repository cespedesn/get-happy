class Quote < ActiveRecord::Base
    belongs_to :user
    belongs_to :author
end