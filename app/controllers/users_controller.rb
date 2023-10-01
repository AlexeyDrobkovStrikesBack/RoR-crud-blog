class UsersController < ApplicationController
    def feed
      @user = User.find(params[:id])
    end
  end
  