class CreateFoodTable < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.bigint :calories
    end
  end
end
