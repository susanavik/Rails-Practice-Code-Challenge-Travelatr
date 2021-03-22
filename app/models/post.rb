class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    has_many :likes
end
