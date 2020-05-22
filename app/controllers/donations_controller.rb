class DonationsController < ApplicationController

  def show
    @donation = current_user.donations.find(params[:id])
    @donation.update(state: 'paid')
  end

  def new
  	@issue = Issue.find(params[:issue_id])
    @charity = Charity.find(params[:charity_id])
    @donation = Donation.new
  end

  def create
  	issue = Issue.find(params[:issue_id])
    charity = Charity.find(params[:charity_id])
    amount = params[:commit].gsub('$', "").to_i * 100
    donation  = Donation.new(charity: charity, issue: issue, amount_cents: amount, state: 'pending', user: current_user)

    if donation.save
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: "#{charity.name}_#{params[:commit]}",
          amount: donation.amount_cents,
          currency: 'usd',
          quantity: 1
        }],
        success_url: issue_charity_donation_url(issue, charity, donation),
        cancel_url: issue_charity_url(issue, charity)
      )
    donation.update(session_id: session.id)
    redirect_to new_issue_charity_donation_payment_path(issue, charity, donation)
    else
      redirect_to charity
    end
  end

  private

	def donation_params
    params.require(:donation).permit(:amount)
	end
end
