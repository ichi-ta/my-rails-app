class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.datetime :start_time
      t.string :division
      t.float :time
      t.references :office, foreign_key: true

      t.timestamps
    end
    add_index :blogs, [:office_id, :created_at]
  end
end
