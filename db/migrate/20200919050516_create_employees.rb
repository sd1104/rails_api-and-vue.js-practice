class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name, null: false, defalt: ""
      t.string :department, null: false, defalt: ""
      t.integer :gender, null: false, defalt: 0
      t.date :birth, null: true
      t.date :joine_date, null: true
      t.bigint :payment, null: false, defalt: 0
      t.text :note, null: false, defalt: ""

      t.timestamps
      t.integer :lock_version
    end
  end
end
