class CharitiesController < ApplicationController

  def index
    @charities = Issue.find(params[:charity_id]).charities
  end

  def show
    @charity= Charity.find(params[:id])
  end
end
