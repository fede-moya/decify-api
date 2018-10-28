require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  
  # initialize test data 
  let!(:users) { create_list(:user, 10) }
  let(:user) { User.all.first }

  # Test suite for GET /rest/v1/users
  describe 'GET /users' do
    # make HTTP get request before each example
    before { get '/rest/v1/users' }

    it 'returns users' do
      expect(json_response_data).not_to be_empty
      expect(json_response_data.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /rest/v1/users/:id
  describe 'GET /rest/v1/users/:id' do
    context 'when the record exists' do
      before { get "/rest/v1/users/#{user.id}" }

      it 'returns the user' do
        expect(json_response_data).not_to be_empty
        expect(json_response_data["id"]).to eq(user.id.to_s)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let!(:user) { FactoryBot.build(:user, id: 9999999 ) }

      it 'returns status code 404' do
        get "/rest/v1/users/#{user.id}"
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expected_error = {
          "code"=>"404",
          "detail"=>"The record identified by 9999999 could not be found.",
          "status"=>"404",
          "title"=>"Record not found"
        }
        
        get "/rest/v1/users/#{user.id}"
        expect(json_response_errors).to contain_exactly(expected_error)
      end
    end
  end

  # Test suite for POST /rest/v1/users
  describe 'POST /rest/v1/users' do
    # valid payload
    let(:valid_payload) { 
      {
        data: {
          type: "users",
          attributes: {
            username: "User 1"
          }
        }
      }  
    }

    let(:invalid_payload) { 
      {
        data: {
          type: "users",
          attributes: {
            username: nil
          }
        }
      }  
    }

    context 'when the request is valid' do

      before { post '/rest/v1/users', params: valid_payload.to_json, headers: { 'CONTENT_TYPE' => 'application/vnd.api+json' } }

      it 'creates a user' do
        expect(json_response_data["attributes"]).to eq({"first_name"=>nil, "last_name"=>nil, "username"=>"User 1"})
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      
      before { post '/rest/v1/users', params: invalid_payload.to_json, headers: { 'CONTENT_TYPE' => 'application/vnd.api+json' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expected_error = {
          "code" => "100",
          "detail" => "username - can't be blank",
          "source" => { "pointer" => "/data/attributes/username" }, 
          "status" => "422",
          "title" => "can't be blank"
        }

        expect(json_response_errors).to contain_exactly(expected_error)
      end
    end
  end

  # # Test suite for PUT /todos/:id
  # describe 'PUT /todos/:id' do
  #   let(:valid_attributes) { { title: 'Shopping' } }

  #   context 'when the record exists' do
  #     before { put "/todos/#{todo_id}", params: valid_attributes }

  #     it 'updates the record' do
  #       expect(response.body).to be_empty
  #     end

  #     it 'returns status code 204' do
  #       expect(response).to have_http_status(204)
  #     end
  #   end
  # end

  # # Test suite for DELETE /todos/:id
  # describe 'DELETE /todos/:id' do
  #   before { delete "/todos/#{todo_id}" }

  #   it 'returns status code 204' do
  #     expect(response).to have_http_status(204)
  #   end
  # end
end