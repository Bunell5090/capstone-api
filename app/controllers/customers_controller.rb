class CustomersController < ApplicationController
  

  def index
    customer = Customer.all.order(:id)
    render json: customer
  end

  def show
    customer = Customer.find_by(id: params[:id])
    render json: customer
  end

  def create
    customer = Customer.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zipcode: params[:zipcode]
    )
    if customer.save
      render json: { message: "Customer created successfully" }, status: :created
    else
      render json: { errors: customer.errors.full_messages }, status: :bad_request
    end
  end

  def update
    id = params[:id]
    customer = Customer.find_by(id: id)
    customer.first_name = params["first_name"] || customer.first_name
    customer.last_name = params["last_name"] || customer.last_name
    customer.address = params["address"] || customer.address
    customer.city = params["city"] || customer.city
    customer.state = params["state"] || customer.state
    customer.zipcode = params["zipcode"] || customer.zipcode
    if customer.save #happy path
      render json: customer
    else #sad path
      render json: {error_messages: customer.errors.full_messages}, status: 422
    end
  end

  def destroy
    customer_id = params["id"]
    customer = Customer.find_by(id: customer_id)
    customer.destroy
    render json: {message: "Customer has been deleted!"}
  end
end
