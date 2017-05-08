require 'rails_helper'

RSpec.describe Api::V1::StudentsController, type: :request do
  describe "#index" do
    before(:each) do
      get '/api/v1/students'
      json = JSON.parse(response.body)
      students = create_list(:student, 10)
    end

    it "200 status code" do
      expect(response).to be_success
    end
  end
end
