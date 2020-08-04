class TweetsController < ApplicationController
  def new
  @tweet = Tweet.new
  end

  def create
  Tweet.create(content: params[:tweet][:content])
  end
end
