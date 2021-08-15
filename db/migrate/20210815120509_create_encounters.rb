class CreateEncounters < ActiveRecord::Migration[6.1]
  def change
    create_table :encounters do |t|
      t.string :reason
      t.date :date
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
