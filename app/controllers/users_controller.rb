class UsersController < ApplicationController
  def myportfolio
    @tracked_stocks = current_user.stocks
  end
end
