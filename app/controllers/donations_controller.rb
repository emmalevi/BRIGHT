class DonationsController < ApplicationController

  def show
    @donation = Donation.find(params[:id])
  end

  def new
    @charity = Charity.find(params[:charity_id])
    @donation = Donation.new
  end

end
