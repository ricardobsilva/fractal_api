require 'rails_helper'

RSpec.describe Student, type: :model do
  it {should have_one(:access_card)}
  it {should have_many(:class_students)}
end
