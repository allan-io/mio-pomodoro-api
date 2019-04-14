class PomodorosController < ApplicationController
  before_action :set_pomodoro, only: [:show, :update, :destroy]

  # GET /pomodoros
  def index
    @pomodoros = Pomodoro.all

    render json: @pomodoros
  end

  # GET /pomodoros/1
  def show
    render json: @pomodoro
  end

  # POST /pomodoros
  def create
    @pomodoro = Pomodoro.new(pomodoro_params)

    if @pomodoro.save
      render json: @pomodoro, status: :created, location: @pomodoro
    else
      render json: @pomodoro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pomodoros/1
  def update
    if @pomodoro.update(pomodoro_params)
      render json: @pomodoro
    else
      render json: @pomodoro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pomodoros/1
  def destroy
    @pomodoro.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pomodoro
    @pomodoro = Pomodoro.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def pomodoro_params
    params.require(:pomodoro).permit(
      :work_time,
      :break_time,
      :work_percent_complete,
      :break_percent_complete,
      :active_theme
    )
  end
end
