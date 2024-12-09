class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  # GET /types
  def index
    @types = Type.all
  end

  # GET /types/new
  def new
    @type = Type.new
  end

  # POST /types
  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to types_path, notice: 'Type was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /types/:id/edit
  def edit
  end

  # PATCH/PUT /types/:id
  def update
    if @type.update(type_params)
      redirect_to types_path, notice: 'Type was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /types/:id
  def destroy
    @type.destroy
    redirect_to types_path, notice: 'Type was successfully deleted.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_type
    @type = Type.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def type_params
    params.require(:type).permit(:name, :icon)
  end
end
