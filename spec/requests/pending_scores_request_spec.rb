# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "PendingScores", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/pending_scores/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/pending_scores/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/pending_scores/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/pending_scores/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
