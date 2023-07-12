class CreateJournalists < ActiveRecord::Migration[7.0]
  def change
    create_table :journalists do |t|
      t.string :index
      t.string :create
      t.string :new

      t.timestamps
    end
  end
end
