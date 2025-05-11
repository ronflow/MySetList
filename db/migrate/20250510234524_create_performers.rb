class CreatePerformers < ActiveRecord::Migration[8.0]
  def change
    create_table :performers do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
