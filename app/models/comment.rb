class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prompt
  belongs_to :commentable, polymorphic: true
end
