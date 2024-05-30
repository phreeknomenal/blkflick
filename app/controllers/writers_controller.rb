class WritersController < ApplicationController
  before_action :set_writer, only: [:show]
  def index
    @writers = Writer.all
  end

  def show
  end

  private

  def set_writer
    @writer = Writer.find(params[:id])
  end

  def writer_params
    params.require(:writer).permit(:name)
  end
end