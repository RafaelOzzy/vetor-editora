class IntrumentResponsesController < ApplicationController
  def create
    @instrument_response = InstrumentResponse.new(instrument_response_params)
    if @instrument_response.save
      # Calculate points based on the answer and store them
      points = calculate_points(@instrument_response.answer)
      @instrument_response.update(points: points)
      redirect_to @instrument_response.instrument, notice: 'Response submitted successfully!'
    else
      render :new
    end
  end

  # Other actions (show, edit, update, destroy) as needed

  private

  def instrument_response_params
    params.require(:instrument_response).permit(:professional_id, :patient_id, :instrument_id, :answer)
  end

  def calculate_points(answer)
    # Implement your logic to calculate points based on the answer
    # For example:
    case answer
    when 1
      3
    when 2
      2
    # Add other cases as needed
    else
      0
    end
  end

  private

  def instrument_response_params
    params.require(:instrument_response).permit(:professional_id, :patient_id, :instrument_id, :answer)
  end
end
