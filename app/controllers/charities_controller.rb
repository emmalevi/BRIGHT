class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @charity = Charity.find(params[:id])
    @issue = Issue.find(params[:issue_id])
    @amounts = ['5', '20', '50', '200', '500', '1000']
  end
end
