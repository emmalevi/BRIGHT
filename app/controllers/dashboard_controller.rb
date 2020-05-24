class DashboardController < ApplicationController
	def new
		email = current_user.email.split('@')
	  @username = email.first

	  @issues = Issue.all
    @donations = []
    filter = []
    current_user.donations.each do |donation|
      if !(filter.include? donation.charity_id)
        filter << donation.charity_id
        @donations << donation
      end
    end
	  
    @markers = @donations.map do |donation|
      {
        infoWindow: render_to_string(partial: "info_window", locals: { issue: donation.issue }),
        lat: donation.issue.latitude,
        lng: donation.issue.longitude,
        image_url: helpers.asset_url("danger.svg"),
      }
    end
	end









  private






end
