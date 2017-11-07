require "test_helper"

describe RentalsController do
  describe 'check_out' do
    it "successfully removes a movie from available_inventory" do
      post rentals_check_out_path(movies(:one).id)

      before_count = available_inventory.count
      must_respond_with :success

      response.header('Content-Type').must_include 'json'
      body = JSON.parse(respnse.body)
      body.must_be_kind_of Array

      available_inventory.must_equal before_count - 1
    end

    it "has a customer_id, movie_id, and due_date" do

    end

    it "doesn't check out a movie if avialble_inventory is 0" do

    end

    it "doesn't check out a movie if movie doesn't exist" do

    end
  end

  describe "check_in" do
    it "has a customer_id and movie_id" do

    end

    it "adds one to the available_inventory" do
    end

    it "fails if available_inventory is the same as inventory" do

    end

  end

  describe "overdue" do
    it "has title, customer_id, name, postal_code, checkout_date, and due_date" do

    end

    it "isn't errors if it isn't truly overdue" do
    end


  end
end
