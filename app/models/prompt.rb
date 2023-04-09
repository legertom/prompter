class Prompt < ApplicationRecord
    has_many :comments, dependent: :destroy
end
