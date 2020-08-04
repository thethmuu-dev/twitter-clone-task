class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :destroy, :edit, :update]
  def index
  @tweets = Tweet.all
  end

  def new
  @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
    redirect_to tweets_path, notice: "Tweet Posted!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
    redirect_to tweets_path, notice: "Tweet Updated!"
    else
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "Tweet Deleted"
  end

  private
  def tweet_params
  params.require(:tweet).permit(:content)
  end

  def set_tweet
  @tweet = Tweet.find(params[:id])
  end
end
