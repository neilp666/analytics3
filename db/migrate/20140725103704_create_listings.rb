class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :job
      t.text :description
      t.string :location
      t.string :apply
      t.string :company
      t.string :url
      t.text :about

      t.timestamps
    end
  end
end
