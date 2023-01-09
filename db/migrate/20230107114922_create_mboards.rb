class CreateMboards < ActiveRecord::Migration[7.0]
  def change
    create_table :mboards do |t|
      t.string :name
      t.string :body
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
