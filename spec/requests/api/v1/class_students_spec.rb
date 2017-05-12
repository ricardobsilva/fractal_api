require 'rails_helper'

RSpec.describe Api::V1::ClassStudentsController, type: :request do
  describe "#index" do
    before(:each) do
      get "/api/v1/class_students"
    end

    it "return a successful reponse" do
      expect(response).to be_success
    end

    it "return a list of registrations" do
      registrations = create_list(:class_student, 10)
      expect(registrations.length).to eq(10)
    end

    it "return a json content_type " do
      expect(response.content_type).to eq("application/json")
    end
  end

  describe "#create" do
    context "when create a new registration" do
      before(:each) do
        post '/api/v1/class_students',  params: {registration: attributes_for(:class_student)}
      end

      it "returns a successful 200 response" do
        expect(response).to be_success
      end

      it "return json content type " do
        expect(response.content_type).to eq("application/json")
      end
    end
    context "when does not create a new registration" do
      before(:each) do
        post '/api/v1/class_students',  params: {registration: attributes_for(:class_student, student_id: nil)}
      end

      it "returns a successful 422 response" do
        expect(response).to have_http_status(422)
      end

      it "return json content type " do
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "#update" do
    context "when update a  registration" do

    end
    context "when does not update a registration" do

    end
  end

end
