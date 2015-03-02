class ScreenshotsController < ApplicationController

  def index
    @screenshots = Screenshot.all
  end

  def new
    @screenshot = Screenshot.new
  end

  def create
    @screenshot = Screenshot.new(screenshot_params)
    if @screenshot.save
      flash[:success] = "Screenshot saved!"
      redirect_to logs_path
    else
      render 'new'
    end
  end

  private

  def screenshot_params
    params.require(:screenshot).permit(:image, :title)
  end

end
