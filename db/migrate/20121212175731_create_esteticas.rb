class CreateEsteticas < ActiveRecord::Migration
  def change
    create_table :esteticas do |t|

      t.timestamps
    end
  end
end
