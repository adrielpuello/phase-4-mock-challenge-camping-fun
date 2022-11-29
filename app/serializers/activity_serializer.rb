class ActivitySerializer < ActiveModel::Serializer
  # This formats our activity data.
  attributes :id, :name, :difficulty
end
