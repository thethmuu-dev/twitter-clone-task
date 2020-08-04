class TweetsController < ApplicationController
  def index
  @tweets = Tweet.all
  end

  def new
  @tweet = Tweet.new
  end

  def create
  Tweet.create(content: params[:tweet][:content])
  redirect_to tweets_path
  end
end
