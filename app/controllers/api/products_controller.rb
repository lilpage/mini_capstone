class Api::ProductsController < ApplicationController
  def index
    if params[:category]
      @products = Product.where("name ILIKE ?", "%params[:category]%")
    else
      @products = Product.all
    end
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    @product.save
    render "show.json.jb"
  end 

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    #Happy/Sad Path
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages }, status: 406
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    if product.destroy
      render json: {message: "Successfully deleted!"} #add which was deleted?
    else
      render json: {errors: product.errors.full_messages}, status: 406
    end
  end

end
