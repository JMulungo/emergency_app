class CreateCategorizes < ActiveRecord::Migration
  def change
    create_table :categorizes do |t|
      t.string :location
      t.string :type
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
