class IssuesController < ApplicationController
skip_before_action :authenticate_user!, except: [:home, :show]
before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @issues = Issue.all
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
    @issue= Issue.find(params[:id])
    @user = current_user
    split = @issue.name.split
    @capitalized_name = split.map { |word| word.capitalize }.join(" ")
  end

end

