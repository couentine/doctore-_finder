class FavoritesController < ApplicationController
  before_action :authenticate_user! 
  before_action :find_doc!

  private

  def find_doc!
    @doc = Doc.find_by_slug!(params[:doc_slug])
  end

    def create
    current_user.favorite(@doc)

    render 'docs/show'
  end

  def destroy
    current_user.unfavorite(@doc)

    render 'docs/show'
  end
end