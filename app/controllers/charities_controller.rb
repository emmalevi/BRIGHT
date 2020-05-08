class CharitiesController < ApplicationController

  def index
    @charities = Issue.find(params[:issue_id]).charities
  end

  def show
    @charity= Charity.find(params[:id])
  end
end
