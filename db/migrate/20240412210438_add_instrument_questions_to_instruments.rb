class AddInstrumentQuestionsToInstruments < ActiveRecord::Migration[7.1]
  def change
    add_column :instruments, :instrument_questions, :integer
  end
end
