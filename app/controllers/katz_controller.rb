
class KatzController < ApplicationController
  before_action :set_kat, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @katz = Kat.all
    json_response(@katz)
  end

  # POST /todos
  def create
    @kat = Kat.create!(kat_params)
    json_response(@kat, :created)
  end

  # GET /todos/:id
  def show
    json_response(@kat)
  end

  # PUT /todos/:id
  def update
    @kat.update(kat_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @kat.destroy
    head :no_content
  end

  private

  def kat_params
    # whitelist params
    params.permit(:title, :img)
  end

  def set_kat
    @kat = Kat.find(params[:id])
  end
end
