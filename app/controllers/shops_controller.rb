class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      I18n.locale = "fr"
      @shop = Shop.find(params[:id])
    end
end
