class ApplicationController < ActionController::API
  #temp code to test with client
  after_action :set_response_headers_for_url_parser_clinet

  def set_response_headers_for_url_parser_clinet
    response.headers['Access-Control-Request-Headers']= 'X-Requested-With, accept, content-type'
    response.headers['Access-Control-Allow-Methods']= 'GET, POST'
    response.headers['Access-Control-Allow-Origin']= '*'
  end

end
