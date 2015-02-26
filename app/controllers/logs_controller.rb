class LogsController < ApplicationController
  before_action :authenticate_dev!, except: [:index, :show]
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  before_action :correct_dev, only: [:edit, :update, :destroy]

  def index
    if params[:query].present?
      @logs = Log.search(params[:query], page: params[:page])
    else
      @logs = Log.all.reverse_order.page params[:page]
    end
    #@logs = Log.all
  end

  def autocomplete
    render json: Log.search(params[:query], autocomplete: true, limit: 10).map(&:title)
  end
  
  def show
  end

  def new
    @log = current_dev.logs.build
  end

  def edit
  end

  def create
    @log = current_dev.logs.build(log_params)

    respond_to do |format|
      if @log.save
        format.html { redirect_to action: "index", notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: 'Log was successfully updated.' }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: 'Log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_log
    @log = Log.find(params[:id])
  end

  def correct_dev
    @log = current_dev.logs.find_by(id:params[:id])
    redirect_to logs_path, notice: "Not authorized to edit this log" if @log.nil?
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def log_params
    params.require(:log).permit(:title, :entry, :image, :tags, :dev_id)
  end
end
