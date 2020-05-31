class IssuesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  def index
    @category = 'All'
    if params[:query].present? #display search results for issues
      @query = params[:query]
      @issues = Issue.search_by_name_location_and_description(@query)
    else #display all issues if no search was done
      @issues = Issue.all
    end

    if params[:category].present? #display search results for issues
      @category = params[:category]
      if @category == 'All'
        @issues = Issue.all
      elsif @category == 'Other'
        @issues = Issue.all.select {|i| i.issue_type != 'Pandemic' && i.issue_type != 'Natural Disaster' }
      else
        @issues = Issue.where(issue_type: @category)
      end
    end
  end

  def map
    @issues = Issue.geocoded #returns issues with coordinates
    @markers = @issues.map do |issue|
      {
        infoWindow: render_to_string(partial: "info_window", locals: { issue: issue }),
        lat: issue.latitude,
        lng: issue.longitude,
        image_url: helpers.asset_url("danger.svg"),
      }
    end
  end

  def show
    @issue = Issue.find(params[:id])
    @user = current_user
    @capitalized_name = @issue.name.split.map { |word| word.capitalize }.join(" ")
  end

  private
  def set_issue
    @issue = Issue.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(:name, :description, :location, :origin, :death_count, :impacted_population, :photo)
  end
end

