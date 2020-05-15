class DonationsController < ApplicationController

  def show
    @donation = Donation.find(params[:id])
    # @donation.charity will give me charity
  end

# def new
#     @donation = current_user.donations.where(state: 'pending').find(params[:donation_id])
#   end

end

