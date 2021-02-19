require 'rails_helper'

RSpec.describe "ShoppingListItems", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/shopping_list_items/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/shopping_list_items/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
