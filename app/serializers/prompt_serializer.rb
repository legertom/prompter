class PromptSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :prompt_text
end
