class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birth_date
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
