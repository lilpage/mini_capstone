class Api::SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def show
    @supplier = Supplier.find_by(params[:id])
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: supplier.name,
      email: supplier.email,
      phone_number: supplier.phone_number
    )
    @supplier.save
    render "show.json.jb"
  end

  def update
    @supplier = Supplier.find_by(params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    render "show.json.jb"
  end

  def destroy
    @supplier = Supplier.find_by(params[:id])
    if @supplier.delete
      render json: {message: "Successfully deleted supplier contact."}
    else
      render json: {errors: @supplier.errors.full_messages}, status: 406
    end
  end


end
