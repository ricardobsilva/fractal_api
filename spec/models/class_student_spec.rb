require 'rails_helper'

RSpec.describe ClassStudent, type: :model do
  it{ should belong_to(:student)}
  it{ should belong_to(:class_of_course)}
end
