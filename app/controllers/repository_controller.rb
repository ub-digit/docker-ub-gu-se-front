require 'net/http'
class RepositoryController < ApplicationController
  @@baseURL = "https://docker.ub.gu.se/v2/"
  @@user = "xljoha"
  @@pwd = "Stockholm99)"

  def index
    uri = URI(@@baseURL + "_catalog")
    req = Net::HTTP::Get.new(uri)
    req.basic_auth @@user, @@pwd
    res = Net::HTTP.start(uri.hostname, uri.port,  :use_ssl => true) {|http|
      http.request(req)
    }
    result = JSON.parse(res.body)
    @repos = result["repositories"]
  end

  def show
    repo = params[:repo]
    uri = URI(@@baseURL + repo + "/tags/list")
    req = Net::HTTP::Get.new(uri)
    req.basic_auth @@user, @@pwd
    res = Net::HTTP.start(uri.hostname, uri.port,  :use_ssl => true) {|http|
      http.request(req)
    }
    @result = JSON.parse(res.body)
    @repo = @result
  end
end
