class UsersController < ApplicationController
  def myportfolio
    @tracked_stocks = current_user.stocks
  end

  def myfriends
    @friends = current_user.friends
  end
end
