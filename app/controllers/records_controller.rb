class RecordsController < ApplicationController
  def index
    @records = Record.all
    @record = Record.new
  end

  def show
    @record = Record.find(params[:id])
  end

  def create
    @record = Record.new(record_params)

    if @record.save
    else
      render @record.errors, status: :unprocessable_entity
    end
  end

  def edit
    @record = Record.find(params[:id])
    @edit = true
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      render @record
    else
      render @record.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
  end

  private

  def record_params
    params.require(:record).permit(:title, :amount, :date)
  end
end
