class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|

      t.string :office_name
      t.string :division
      t.datetime :start_time

      t.timestamps
    end
  end
end
