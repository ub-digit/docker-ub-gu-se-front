require 'net/http'
class RepositoryController < ApplicationController
  @@baseURL = APP_CONFIG['api_uri']
  @@user = APP_CONFIG['user']
  @@pwd = APP_CONFIG['password']

  def index
    uri = URI(@@baseURL + "_catalog")
    result = getData(uri)
    @repos = result["repositories"]
  end

  def show
    repo = params[:repo]
    uri = URI(@@baseURL + repo + "/tags/list")
    @repo = getData(uri)
  end

  def getData(uri)
    req = Net::HTTP::Get.new(uri)
    req.basic_auth @@user, @@pwd
    res = Net::HTTP.start(uri.hostname, uri.port,  :use_ssl => true) {|http|
      http.request(req)
    }
    @result = JSON.parse(res.body)
  end
end
