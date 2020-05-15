class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/myportfolio'
      else
        flash[:alert] = "Please enter a valid symbol to search"
        redirect_to myportfolio_path
      end
    else
      flash[:alert] = "Please enter a symbol to search"
      redirect_to myportfolio_path
    end
  end
end