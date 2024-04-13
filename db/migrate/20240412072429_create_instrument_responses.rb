class CreateInstrumentResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :instrument_responses do |t|
      t.references :instrument, null: false, foreign_key: true
      t.text :answer

      t.timestamps
    end
  end
end
