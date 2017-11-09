class HomeController < ApplicationController
  def index
  end

  def send_tweet
    
  if SendTweet.new(par_tweet[:content]).perform
      flash[:success] = "Tweet sent"
      redirect_to root_path
    else
      flash.now[:danger] = "Error! Tweet not sent"
      render :index
    end
  
  end

  private

  def par_tweet
    params.require(:par_tweet).permit(:content)
  end
end
