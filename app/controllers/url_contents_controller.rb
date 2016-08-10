class UrlContentsController < ApplicationController
  before_action :load_url, :only => [:index]

  def all
    @url_contents = UrlContent.includes(:url)
    render :json => @url_contents
  end

  def index

    render :json => @url.url_contents
  end

  def load_url
    @url = Url.find(params[:url_id])
  end
end
