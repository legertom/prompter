class Prompt < ApplicationRecord
    has_many :comments, dependent: :destroy, as: :commentable
end
