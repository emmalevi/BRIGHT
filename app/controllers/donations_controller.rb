class DonationsController < ApplicationController

  def show
    @donation = Donation.find(params[:id])
  end

  def new
  	@issue = Issue.find(params[:issue_id])
    @charity = Charity.find(params[:charity_id])
    @donation = Donation.new
  end

  def create
  	@issue = Issue.find(params[:issue_id])
    @charity = Charity.find(params[:charity_id])
  	@donation = Donation.new(donation_params)
  	@donation.issue = @issue
  	@donation.charity = @charity
  	@donation.user = current_user

  	if @donation.save 

  		redirect_to root_path 
  	else 
  		render :new
  	end
  end

private 

	def donation_params
    params.require(:donation).permit(:amount)
	end 
end
