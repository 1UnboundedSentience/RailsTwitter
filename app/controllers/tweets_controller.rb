class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new

  end

  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:title, :text))
    @tweet.save
    redirect_to @tweet
  end

  def show
    @tweet = Tweet.find(params[:id])
  end
end

private
  def tweet_params
    params.require(:tweet).permit(:title, :text)
  end