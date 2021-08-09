class ReviewsController < ApplicationController

    def new
        # we need @restaurant in our `simple_form_for`
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new
      end
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to restaurant_path(@review.restaurant)
    end

    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new(review_params)
        @review.restaurant = @restaurant
    
         if @review.save
            redirect_to restaurant_path(@review.restaurant)
          else
            render 'new'
          end
      end
      
    private
  
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end