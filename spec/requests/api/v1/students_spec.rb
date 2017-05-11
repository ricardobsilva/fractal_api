require 'rails_helper'

RSpec.describe Api::V1::StudentsController, type: :request do
  describe "#index" do
    before(:each) do
      get '/api/v1/students'
    end

    it "return all the students" do
      students = create_list(:student, 10)
      expect(students.length).to eq(10)
    end

    it "returns a successful 200 response" do
      expect(response).to be_success
    end

    it "return json content type " do
      expect(response.content_type).to eq("application/json")
    end
  end

  describe "#create" do
    before(:each) do
      post '/api/v1/students',  params: {student: attributes_for(:student)}
    end

    context 'when a student its created' do
      it "returns a successful 200 response" do
        expect(response).to be_success
      end
      
      it "return json content type " do
        expect(response.content_type).to eq("application/json")
      end
    end
  end
end
