class SelfiesController < ApplicationController
  def index
    @selfies = Selfie.all
  end

  def show
    @selfie = Selfie.find(params[:id])
  end

  def new
    @selfie = Selfie.new
  end

  def create
    @selfie = Selfie.new(selfie_params)
    if @selfie.save
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    @selfie = Selfie.find(params[:id])
    if @selfie.destroy
      redirect_to '/'
    else
      redirect_to selfie_path(@selfie)
    end
  end

  private

  def selfie_params
    params.require(:selfie).permit(:body)
  end
end
