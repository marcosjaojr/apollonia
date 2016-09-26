class DentistsController < ApplicationController
  def index
    @dentists = Dentist.all
  end

  def show
    @dentist = Dentist.find(params[:id])
  end

  def new
    @dentist = Dentist.new
  end

  def edit
    @dentist = Dentist.find(params[:id])
  end

  def create
    @dentist = Dentist.new(dentist_params)
    if @dentist.save!
      redirect_to @dentist
    else
      render 'new'
    end
  end

  def update
    @dentist = Dentist.find(params[:id])

    if @dentist.update(dentist_params)
      redirect_to @dentist
    else
      render 'edit'
    end
  end

  def destroy
    @dentist = Dentist.find(params[:id])
    @dentist.destroy

    redirect_to dentists_path
  end

  private
    def dentist_params
      params.require(:dentist).permit(:avatar, :name, :phone)
    end
end
