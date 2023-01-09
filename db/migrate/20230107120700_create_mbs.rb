class CreateMbs < ActiveRecord::Migration[7.0]
  def change
    create_table :mbs do |t|
      t.string :body
      t.references :mboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
