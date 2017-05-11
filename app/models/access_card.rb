class AccessCard < ApplicationRecord
  belongs_to :student, required: false
end
