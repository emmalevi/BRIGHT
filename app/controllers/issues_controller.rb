class IssuesController < ApplicationController

  def index
    @issues = Issue.geocoded #returns issues with coordinates

    @markers = @issues.map do |issue|
      {
        lat: issue.latitude,
        lng: issue.longitude
      }
    end

end
