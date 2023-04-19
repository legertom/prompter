class ResourceLink < ApplicationRecord
  belongs_to :resource_category
  has_many :comments, as: :commentable, dependent: :destroy
end
