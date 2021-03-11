class Api::SuppliersController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(params[:id])
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: supplier.name
      email: supplier.email
      phone_number: supplier.phone_number
    )
    @supplier.save
    render "show.json.jb"
  end

  def update
    render "show.json.jb"
  end

  def destroy
    render json: {"Successfully deleted supplier contact."}
  end


end
