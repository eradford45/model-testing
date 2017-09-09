class BiosController < ApplicationController
  before_action :set_bio, only: [:show, :update, :edit, :destroy]

  def index
    @bios = Bio.all
  end

  def show
  end

  def new
    @bio = Bio.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @bio = Bio.new(bio_params)

    if @bio.save
      redirect_to bio_path(@bio)
    else
      render partial: "form"
    end
  end


  def update
    if @bio.update(bio_params)
      redirect_to bio_path(@bio)
    else
      render partial: "form"
    end
  end

  def destroy
    @bio.destroy
    redirect_to bios_path
  end

  private

    def set_bio
      @bio = Bio.find(params[:id])
    end

    def bio_params
      params.require(:bio).permit(:profile_image, :description, :user_id)
    end
end
