class MarkersController < ApplicationController
  before_action :set_marker, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @markers = Marker.all
    respond_with(@markers)
  end

  def show
    respond_with(@marker)
  end

  def new
    @marker = Marker.new
    respond_to do |format|
      # format.html {redirect_to task_url}
      format.js
    end
    # respond_with(@marker)
  end

  def edit
  end

  def create
    @marker = Marker.new(marker_params)
    @marker.save
    # respond_with(@marker)
    redirect_to  root_path
  end

  def update
    @marker.update(marker_params)
    respond_with(@marker)
  end

  def destroy
    @marker.destroy
    respond_with(@marker)
  end

  private
    def set_marker
      @marker = Marker.find(params[:id])
    end

    def marker_params
      params.require(:marker).permit(:time)
    end
end
