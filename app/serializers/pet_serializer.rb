class PetSerializer < ActiveModel::Serializer
  attributes :name, :id, :customer_id, :species, :breed, :birthday, :gender, :sterilized
end
