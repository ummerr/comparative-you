class CreateMantras < ActiveRecord::Migration
  def change
    create_table :mantras do |t|
      t.string :mantra

      t.timestamps
    end
  end
end