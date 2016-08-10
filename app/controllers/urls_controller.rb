class UrlsController < ApplicationController
  def index
    @urls = Url.all
    render :json => @urls
  end

  def create
    @url = (Url.find_by_source(params[:url][:source]).present?  ? Url.find_by_source(params[:url][:source]) : Url.new(url_params))
    url_parser = UrlParser.new(@url)
    url_creation_service = UrlCreationService.new(url_parser)
    
    if url_creation_service.create
      render :json => {url: @url}
    else
      render :json => {status: false, errors: @url.errors}
    end
  end

  def url_params
    params.require(:url).permit(:source)
  end
end
