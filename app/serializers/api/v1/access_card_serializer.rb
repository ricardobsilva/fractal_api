class Api::V1::AccessCardSerializer < ActiveModel::Serializer
  attributes :id, :registration_number, :emission_date
end
