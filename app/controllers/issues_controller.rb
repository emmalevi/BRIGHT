class IssuesController < ApplicationController
skip_before_action :authenticate_user!, except: [:home, :show]
before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @issues = Issue.where("name iLike '%#{params[:query]}%'")
    else
      @Issues = Issue.all
    end
  end


  def map
    @issues = Issue.geocoded #returns issues with coordinates
    @markers = @issues.map do |issue|
      {
        lat: issue.latitude,
        lng: issue.longitude
      }
    end
  end


  def show
    @issue= Issue.find(params[:id])
    @user = current_user
    split = @issue.name.split
    @capitalized_name = split.map { |word| word.capitalize }.join(" ")
  end

end

