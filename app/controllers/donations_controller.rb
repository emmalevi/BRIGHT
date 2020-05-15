class DonationsController < ApplicationController

  def show
    @donation = Donation.find(params[:id])
  end

  def new
    @charity = Charity.find(params[:charity_id])
    @donation = Donation.new
    # @donation = current_user.donations.where(state: 'pending').find(params[:donation_id])
  end

  def create
    charity = Charity.find(params[:charity_id])
    donation  = Donation.create!(charity: charity, amount: .price, state: 'pending', user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
      # name: teddy.sku,
      # images: [teddy.photo_url],
      amount: donation.amount_cents,
      currency: 'usd',
      quantity: 1
    }],
    success_url: donation_url(donation),
    cancel_url: donation_url(donation)
  )

  donation.update(checkout_session_id: session.id)
  redirect_to new_donation_payment_path(donation)
  end
end
