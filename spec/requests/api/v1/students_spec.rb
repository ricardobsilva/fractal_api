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

    context 'when a student its created' do
      before(:each) do
        post '/api/v1/students',  params: {student: attributes_for(:student)}
      end

      it "returns a successful 200 response" do
        expect(response).to be_success
      end

      it "return json content type " do
        expect(response.content_type).to eq("application/json")
      end
    end

    context 'when a student its NOT created' do
      before(:each) do
        post '/api/v1/students',  params: {student: attributes_for(:student, name: nil)}
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
    context 'when a student its updated' do
      let(:student){create(:student, id: 1)}
      before(:each) do
        put "/api/v1/students/#{student.id}", params: {student: attributes_for(:student)}
      end

      it "return a successful 200 reponse" do
        expect(response).to be_success
      end

      it "return json content type " do
        expect(response.content_type).to eq("application/json")
      end
    end

    context 'when a student its NOT updated' do
      let(:student){create(:student, id: 1)}

      before(:each) do
        put "/api/v1/students/#{student.id}",  params: {student: attributes_for(:student, birthdate: nil)}
      end

      it "returns a successful 422 response" do
        expect(response).to have_http_status(422)
      end

      it "return json content type " do
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "#destroy" do
    let(:student){create(:student, id: 2)}
    before(:each) do
      delete "/api/v1/students/#{student.id}"
    end

    it "return a successful 200 reponse" do
      expect(response).to be_success
    end

    it "return json content type " do
      expect(response.content_type).to eq("application/json")
    end
  end

  describe "#show" do
    let(:student){create(:student, id: 3)}
    before(:each) do
      get "/api/v1/students/#{student.id}"
    end

    it "return a successful 200 reponse" do
      expect(response).to be_success
    end

    it "return json content type " do
      expect(response.content_type).to eq("application/json")
    end
  end
end
