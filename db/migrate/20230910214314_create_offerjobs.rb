class CreateOfferjobs < ActiveRecord::Migration[7.0]
  def change
    create_table :offerjobs do |t|
      t.string :title
      t.text :description
      t.text :requirements
      t.decimal :salary
      t.string :location

      t.timestamps
    end
  end
end
