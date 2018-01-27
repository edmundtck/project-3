class UsersController < ApplicationController
  def show
    # === setting default space of 13 ===
    # @space = Space.find(13)
    @space = User.find(params[:id]).space
    @website = @space.website
    @bookmarks = Bookmark.where(user_id: 1) # to be changed after login / logout done
    @product = Product.new
    @products = @space.products
  end

  def update
    #code
  end

  def admin
    @admin = User.find(2)
    @spaces = Space.where(is_active: false)
  end

end
