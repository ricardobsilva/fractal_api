require 'elasticsearch/model'
class AccessCard < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :student, required: false
end
