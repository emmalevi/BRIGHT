class DashboardController < ApplicationController
	def new
		email = current_user.email.split('@')
	  @username = email.first

	  @issues = Issue.all
	  @donations = current_user.donations

	end
    

    
 





  private






end
