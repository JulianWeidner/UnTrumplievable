class RealTweetsController < ApplicationController
  before_action :set_real_tweet, only: [:show, :edit, :update, :destroy]

  # GET /real_tweets
  # GET /real_tweets.json
  def index
    @real_tweets = RealTweet.all
  end

  # GET /real_tweets/1
  # GET /real_tweets/1.json
  def show
  end

  # GET /real_tweets/new
  def new
    @real_tweet = RealTweet.new
  end

  # GET /real_tweets/1/edit
  def edit
  end

  # POST /real_tweets
  # POST /real_tweets.json
  def create
    @real_tweet = RealTweet.new(real_tweet_params)

    respond_to do |format|
      if @real_tweet.save
        format.html { redirect_to @real_tweet, notice: 'Real tweet was successfully created.' }
        format.json { render :show, status: :created, location: @real_tweet }
      else
        format.html { render :new }
        format.json { render json: @real_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /real_tweets/1
  # PATCH/PUT /real_tweets/1.json
  def update
    respond_to do |format|
      if @real_tweet.update(real_tweet_params)
        format.html { redirect_to @real_tweet, notice: 'Real tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @real_tweet }
      else
        format.html { render :edit }
        format.json { render json: @real_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /real_tweets/1
  # DELETE /real_tweets/1.json
  def destroy
    @real_tweet.destroy
    respond_to do |format|
      format.html { redirect_to real_tweets_url, notice: 'Real tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_tweet
      @real_tweet = RealTweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def real_tweet_params
      params.fetch(:real_tweet, {})
    end
end
