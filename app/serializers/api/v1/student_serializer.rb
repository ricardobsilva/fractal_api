class Api::V1::StudentSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :access_card
end
