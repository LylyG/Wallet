class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.decimal :credits
      t.decimal :debits
      t.string :recipient

      t.timestamps null: false
    end
  end
end
