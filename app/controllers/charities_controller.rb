class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @charity = Charity.find(params[:id])
  end
end
