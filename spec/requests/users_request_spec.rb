require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/users"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/users/id"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /signup" do
    it "returns http success" do
      get "/users/signup"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      get "/users/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/users/id/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /update" do
    it "returns http success" do
      get "/users/id/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /destroy" do
    it "returns http success" do
      get "/users/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
