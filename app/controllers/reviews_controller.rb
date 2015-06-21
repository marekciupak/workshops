class ReviewsController < ApplicationController

  expose(:review)
  expose(:product)
  expose(:category)
  expose_decorated(:reviews, ancestor: :product)

  def edit
  end

  def create
    self.review = Review.new(review_params)
    self.review.user = current_user

    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render 'products/show'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
