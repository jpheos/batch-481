class Api::V1::RestaurantsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # POST /api/v1/restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

    if @restaurant.save
      render :show, status: :created
    else
      render_errors
    end
  end

  # PATCH | PUT /api/v1/restaurants/:id
  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      render :show
    else
      render_errors
    end
  end

  private

  def render_errors
    render json: { error: @restaurant.errors.full_messages }, status: :bad_request
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
