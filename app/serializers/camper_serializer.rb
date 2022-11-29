class CamperSerializer < ActiveModel::Serializer
  # formats the data for our camper.
  attributes :id, :name, :age
end
