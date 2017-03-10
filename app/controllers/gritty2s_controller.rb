class Gritty2sController < ApplicationController
  before_action :set_gritty2, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @gritty2s = Gritty2.all
    respond_with(@gritty2s)
  end

  def show
    respond_with(@gritty2)
  end

  def new
    @gritty2 = Gritty2.new
    respond_with(@gritty2)
  end

  def edit
  end

  def create
    @gritty2 = Gritty2.new(gritty2_params)
    @gritty2.save
    respond_with(@gritty2)
  end

  def update
    @gritty2.update(gritty2_params)
    respond_with(@gritty2)
  end

  def destroy
    @gritty2.destroy
    respond_with(@gritty2)
  end

  private
    def set_gritty2
      @gritty2 = Gritty2.find(params[:id])
    end

    def gritty2_params
      params.require(:gritty2).permit(:title, :time)
    end
end
