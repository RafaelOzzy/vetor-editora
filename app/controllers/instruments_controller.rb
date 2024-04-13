class InstrumentsController < ApplicationController

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    if @instrument.save!
      redirect_to patients_path, notice: 'Instrumento criado com sucesso!'
    else
      render :new # Render o formulário de novo caso tenha dado algum erro de validação
    end
  end


  private

  def instrument_params
    params.require(:instrument).permit(:instrument_questions, :question_1, :question_2, :question_3, :question_4, :question_5)
  end


end
