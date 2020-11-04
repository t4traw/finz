class TacklesController < ApplicationController
  before_action :set_tackle, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:index, :show]

  def index
    @tackles = Tackle.all
  end

  def show
  end

  def new
    @tackle = Tackle.new
  end

  def edit
  end

  def create
    @tackle = current_user.tackles.new(tackle_params)

    if @tackle.save
      redirect_to @tackle, notice: t('.notice')
    else
      render :new
    end
  end

  def update
    if @tackle.update(tackle_params)
      redirect_to @tackle, notice: t('.notice')
    else
      render :edit
    end
  end

  def destroy
    @tackle.destroy
    redirect_to current_user notice: t('.notice')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tackle
      @tackle = Tackle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tackle_params
      params.require(:tackle).permit(:photo, :description, :tag_list, comments_attributes: [:id, :body])
    end
end
