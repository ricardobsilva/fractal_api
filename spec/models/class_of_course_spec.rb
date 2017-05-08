require 'rails_helper'

RSpec.describe ClassOfCourse, type: :model do
  it{should belong_to(:course) }
  it{should have_many(:class_students) }
  it{should have_many(:students)}
end
