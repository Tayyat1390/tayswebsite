class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.int :cars
      t.str :surname
      t.str :given

      t.timestamps
    end
  end
end
