class IssuesController < ApplicationController
skip_before_action :authenticate_user!, except: [:home, :show]
before_action :set_issue, only: [:show, :edit, :update, :destroy]


  def index
    if params[:query].present?
      @query = params[:query]
      @issues = Issue.where("name iLike '%#{params[:query]}%'")
    else
      @issues = Issue.all
  end
end

  def map
    @issues = Issue.geocoded #returns issues with coordinates
    @markers = @issues.map do |issue|
      {
        infoWindow: render_to_string(partial: "info_window", locals: { issue: issue }),
        lat: issue.latitude,
        lng: issue.longitude
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

